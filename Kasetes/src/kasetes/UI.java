package kasetes;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;

class UI {
    private SQL sql = new SQL();

    void begin(){
        int choice = 1;
        BufferedReader bufRead = new BufferedReader(new InputStreamReader(System.in));

        showMenu();

        while (choice != 0) {
            try {
                System.out.print(">");
                choice = Integer.parseInt(bufRead.readLine());

                switch (choice) {
                    case 0: break;
                    case 1: rentTape();
                            break;
                    case 2: returnTape();
                            break;
                    case 3: showUnreturned();
                            break;
                    case 4: showRented();
                            break;
                    case 5: showLateCustomers();
                            break;
                    case 6: changeRentPrice();
                            break;
                    case 7: changePhoneNumber();
                            break;
                    default:
                        System.out.println("Blogas pasirinkimas");
                        break;
                }
            } catch (IOException e) {
                System.out.println("Klaida skaitant ivesti");
            } catch (NumberFormatException e) {
                System.out.println("Netinkamas ivesties formatas");
            }
        }

        exit();
    }

    private void showMenu(){
        System.out.println("Kasečių nuomos punktas");
        System.out.println("[1] Išnuomoti kasetę");
        System.out.println("[2] Grąžinti kasetę");
        System.out.println("[3] Peržiūrėti neišnuomotas kasetes");
        System.out.println("[4] Peržiūrėti išnuomotas kasetes");
        System.out.println("[5] Parodyti skolininkus");
        System.out.println("[6] Pakeisti kasetės nuomos kainą");
        System.out.println("[7] Pakeisti kliento telefono numerį");
        System.out.println("[0] Baigti darbą");
    }

    private void rentTape() {

    }

    private void returnTape(){

    }

    private void showUnreturned(){

    }

    private void showRented(){

    }

    private void showLateCustomers(){

    }

    private void changeRentPrice(){

    }

    private void changePhoneNumber(){

    }

    private void exit(){
        sql.closeConnection();
        System.exit(1);
    }
}