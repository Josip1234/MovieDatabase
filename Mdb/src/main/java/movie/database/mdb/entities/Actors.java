package movie.database.mdb.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Actors {
	private String id;
    private String firstLastName;
    private String dateOfBirth;
    private String placeOfBirth;
    private String about;
    private String actingHistory;
}
