/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.StringTokenizer;
import java.util.Vector;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Zunaid
 */
public class Option {

    public Vector add(product aCD, Vector buylist) {
        boolean match = false;
        if (buylist == null) {
            buylist = new Vector();
            buylist.addElement(aCD);
        } else {
            for (int i = 0; i < buylist.size(); i++) {
                product cd = (product) buylist.elementAt(i);
                if (cd.getModel().equals(aCD.getModel())) {
                    cd.setQuantity(cd.getQuantity() + aCD.getQuantity());
                    buylist.setElementAt(cd, i);
                    match = true;
                }
            }
            if (!match) {
                buylist.addElement(aCD);
            }
        }
        return buylist;
    }

    public Vector delete(int index, Vector buylist) {
        buylist.removeElementAt(index);
        return buylist;
    }

    public String check(Vector buylist) {
        float total = 0;
        
        for (int i = 0; i < buylist.size(); i++) {
            product anOrder = (product) buylist.elementAt(i);
            float price = anOrder.getPrice();
            int qty = anOrder.getQuantity();
         
            total += (price * qty);
        }
        total += 0.005;
        String amount = new Float(total).toString();
        int n = amount.indexOf('.');
        amount = amount.substring(0, n + 3);
        return amount;
    }
    
     public String totalQuantity(Vector buylist) {
        int quantity = 0;
        for (int i = 0; i < buylist.size(); i++) {
        product anOrder = (product) buylist.elementAt(i);
        quantity = quantity + anOrder.getQuantity();
        }
            
        String q = new Integer(quantity).toString();
        return q;
     
   }

    public product getCD(String myCd, String qty) {
        StringTokenizer t = new StringTokenizer(myCd, "|");
        String brand = t.nextToken();
        String model = t.nextToken();
        String price = t.nextToken();
        price = price.replace('$', ' ').trim();
        product cd = new product();
        cd.setBrand(brand);
        cd.setModel(model);
        cd.setPrice((new Float(price)).floatValue());
        cd.setQuantity((new Integer(qty)).intValue());
        return cd;
    }
}
