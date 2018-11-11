package domain;

import java.util.Date;

public class Result {
    private Date resultDate;
    private Double valueOfX;
    private Double valueOfY;
    private Double valueOfR;
    private boolean result;

    public void setResultDate(Date resultDate) {
        this.resultDate = resultDate;
    }

    public void setValueOfX(Double valueOfX) {
        this.valueOfX = valueOfX;
    }

    public void setValueOfY(Double valueOfY) {
        this.valueOfY = valueOfY;
    }

    public void setValueOfR(Double valueOfR) {
        this.valueOfR = valueOfR;
    }

    public void setResult(boolean result) {
        this.result = result;
    }

    public Date getResultDate() {
        return resultDate;
    }

    public Double getValueOfX() {
        return valueOfX;
    }

    public Double getValueOfY() {
        return valueOfY;
    }

    public Double getValueOfR() {
        return valueOfR;
    }

    public boolean isResult() {
        return result;
    }

    public String getAllValues(){
        return resultDate + "," + valueOfX + "," + valueOfY + "," + valueOfR + "," + result;
    }
}
