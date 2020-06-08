package speech.synthesis.command;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import framework.servlet.controller.handler.FileDownloadHandler;
import speech.synthesis.SpeechSynthesisService;
import speech.vo.AudioSourceVO;

public class HandleSynthesisAction implements FileDownloadHandler {

	@Override
	public String getURL() {
		return "/download/speech/makeNew";
	}

	@Override
	public File process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String text = req.getParameter("speech-text").trim();
		
		AudioSourceVO audioSource = new AudioSourceVO(text, "wait", (String) req.getSession().getAttribute("user-id"));
		
		SpeechSynthesisService service = new SpeechSynthesisService();
		String filePath = service.process(audioSource);
		
		File file = new File(filePath);
		
		return file;
	}

}
