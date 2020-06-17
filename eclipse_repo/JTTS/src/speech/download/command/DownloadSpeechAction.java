package speech.download.command;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.ClientAbortException;

import framework.servlet.controller.handler.FileDownloadHandler;
import framework.util.FileUtil;
import framework.util.LogUtil;
import speech.dao.AudioSourceDAO;
import speech.vo.AudioSourceVO;

public class DownloadSpeechAction implements FileDownloadHandler {

	private static final int DOWNLOAD_BUFFER_SIZE = 1024 * 32;
	
	@Override
	public String getURL() {
		return "/download/speech";
	}

	@Override
	public File process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String fileID = req.getParameter("file-id");
		int fileSeq = Integer.parseInt(fileID);
		AudioSourceDAO dao = new AudioSourceDAO();
		AudioSourceVO audio = dao.getAudioSourceById(fileSeq);
		
		File file = new File(audio.getFilePath());
		
		String fileName = FileUtil.getFileNameExceptExt(file)+"."+FileUtil.getExt(file);
		
		if (!file.exists())
			throw new FileNotFoundException("no such file detected.");
		
		//3. mimeType 설정하기
		resp.setContentType("audio/mp3");
					
		//response header에 파일이름과 파일 크기 담아주기 
		resp.addHeader("Content-Length", Long.toString(file.length()));	
		String header = getBrowser(req);
		if (header.contains("Chrome")) {
			String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		} else if (header.contains("MSIE")) {
			String docName = URLEncoder.encode(fileName,"UTF-8").replaceAll("\\+", "%20");
			resp.setHeader("Content-Disposition", "attachment;filename=" + docName + ";");
		} else if (header.contains("Firefox")) {
			String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		} else if (header.contains("Opera")) {
			String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		} else {
			String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
			resp.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
		}
		//resp.setHeader("Content-Transfer-Encoding", "binary;");
		//resp.setHeader("Pragma", "no-cache;"); //http1.0
		//resp.setDateHeader("Expires", 0);
		//resp.setHeader ( "Cache-Control", "no-cache" ); //http1.1
				
		//6. 요청된 파일을 읽어서 클라이언트쪽으로 저장한다.		
		FileInputStream fileInputStream = null;
		BufferedOutputStream outputStream = new BufferedOutputStream(resp.getOutputStream());
		
		try {
			fileInputStream = new FileInputStream(file);
			
			byte[] outByte = new byte[DOWNLOAD_BUFFER_SIZE];
	
	        while(fileInputStream.read(outByte, 0, DOWNLOAD_BUFFER_SIZE) != -1) {
	        	outputStream.write(outByte, 0, DOWNLOAD_BUFFER_SIZE);
	        }
		} catch (ClientAbortException e){
			LogUtil.printLog(req.getRemoteAddr(), "request aborted");
		} catch (Exception e) {
			throw new IOException(e);
		} finally {
			fileInputStream.close();
			outputStream.flush();
			outputStream.close();
		}
		
		return file;
	}

	private String getBrowser(HttpServletRequest request) {
		String header =request.getHeader("User-Agent");
		if (header.contains("MSIE"))
			return "MSIE";
		else if(header.contains("Chrome"))
			return "Chrome";
		else if(header.contains("Opera"))
			return "Opera";

		return "Firefox";
	}
}
