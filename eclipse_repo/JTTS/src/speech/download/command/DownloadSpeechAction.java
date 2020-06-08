package speech.download.command;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import framework.servlet.controller.handler.FileDownloadHandler;
import speech.dao.AudioSourceDAO;
import speech.vo.AudioSourceVO;

public class DownloadSpeechAction implements FileDownloadHandler {

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
		
		if (audio != null)
			return new File(audio.getFilePath());
		else
			return null;
	}

}
