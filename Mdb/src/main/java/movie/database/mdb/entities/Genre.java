package movie.database.mdb.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Genre extends MovieAndTv {
private int id;
private String genreName;

public Genre(int id, String movieTvName, int id2, String genreName) {
	super(id, movieTvName);
	id = id2;
	this.genreName = genreName;
}




}
