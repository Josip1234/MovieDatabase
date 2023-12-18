package movie.database.mdb.entities;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieTvLog extends MovieAndTv {
private int id;
private String lastKnownDateOfWatching;
private String watchHistory;
private int numberOfWatching;
public MovieTvLog(int id, String movieTvName, int id2, String lastKnownDateOfWatching, String watchHistory,
		int numberOfWatching) {
	super(id, movieTvName);
	id = id2;
	this.lastKnownDateOfWatching = lastKnownDateOfWatching;
	this.watchHistory = watchHistory;
	this.numberOfWatching = numberOfWatching;
}
@Override
public String toString() {
	return "{\"MovieTvLog\":{\"id\":\"" + id + "\", \"lastKnownDateOfWatching\":\"" + lastKnownDateOfWatching
			+ "\", \"watchHistory\":\"" + watchHistory + "\", \"numberOfWatching\":\"" + numberOfWatching + "\"}}\n";
}


}
