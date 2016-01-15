package sessionUtils;

/**
 * Created by ipi on 15/01/2016.
 */
public class ReservationSession {
    String email;
    String classe;
    String dateDeparture;

    public String getClasse() {
        return classe;
    }

    public void setClasse(String classe) {
        this.classe = classe;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateDeparture() {
        return dateDeparture;
    }

    public void setDateDeparture(String dateDeparture) {
        this.dateDeparture = dateDeparture;
    }

    public ReservationSession(String email, String classe, String dateDeparture) {
        this.email = email;
        this.classe = classe;
        this.dateDeparture = dateDeparture;
    }
}
