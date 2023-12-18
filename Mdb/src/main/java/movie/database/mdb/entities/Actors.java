package movie.database.mdb.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Actors extends MovieAndTv {
	private int id;
    private String firstLastName;
    private String dateOfBirth;
    private String placeOfBirth;
    private String about;
    private String actingHistory;
    
	public Actors(int id, String movieTvName, int id2, String firstLastName, String dateOfBirth, String placeOfBirth,
			String about, String actingHistory) {
		super(id, movieTvName);
		id = id2;
		this.firstLastName = firstLastName;
		this.dateOfBirth = dateOfBirth;
		this.placeOfBirth = placeOfBirth;
		this.about = about;
		this.actingHistory = actingHistory;
	}
    
    
    
}
