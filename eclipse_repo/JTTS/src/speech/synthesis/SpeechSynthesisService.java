package speech.synthesis;

import java.io.File;
import java.io.IOException;

import framework.util.FileUtil;
import framework.util.appProcessing.AppProcessBuilder;
import speech.dao.AudioSourceDAO;
import speech.vo.AudioSourceVO;

public class SpeechSynthesisService {

	public String process(AudioSourceVO audioSource) {
		AppProcessBuilder pb = new AppProcessBuilder();
		
		String[] command = new String[5];
		command[0] = "";
		command[1] = "";
		command[2] = "";
		command[3] = "";											/////////////
		command[4] = "";											/////////////
		
		try {
			pb.process(command);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		String speechFilePath = pb.getOutput().get(0);					/////////////
		String newFilePath = "";										/////////////
		FileUtil.moveFile(new File(speechFilePath), newFilePath);
		audioSource.setFilePath(newFilePath);
		
		AudioSourceDAO dao = new AudioSourceDAO();
		dao.insertNewAudioSource(audioSource);
		
		return newFilePath;
	}
}
