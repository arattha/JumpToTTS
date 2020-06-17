package speech.dao;

import java.sql.SQLException;

import framework.jdbc.DBMng;
import speech.vo.AudioSourceVO;

public class AudioSourceDAO {

	public boolean insertNewAudioSource(AudioSourceVO audio) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("insert into audio_source values(null, ?, ?, ?, ?, ?)");
			db.setString(audio.getText());
			db.setString(audio.getStatusCode());
			db.setString(audio.getUserID());
			db.setString(audio.getFilePath());
			db.setDate(audio.getRegdate());
			db.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			db.close();
		}
		
		return true;
	}
	
	public AudioSourceVO getAudioSourceById(int seq) {
		DBMng db = null;
		
		try {
			db = new DBMng();
			db.setQuery("select * from audio_source where seq = ?");
			db.setInt(seq);
			db.execute();
			
			if (db.next()) {
				AudioSourceVO res = new AudioSourceVO(db.getString("text"), db.getString("status_code"), db.getString("req_user_id"));
				res.setFilePath(db.getString("file_path"));
				res.setRegdate(db.getDate("regdate"));
				return res;
			}
			else
				return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			db.close();
		}
	}
}
