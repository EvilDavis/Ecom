package com.ecom.pojo;

import com.google.gson.annotations.SerializedName;
import org.springframework.stereotype.Component;

/**
 * OrderData类 对应 omdb._order 的 odata 列
 */

@Component
public class OrderData {
    private String pid;
    private int pcount;
    @SerializedName("shop_price")
    private float shopPrice;
    @SerializedName("sub_total")
    private float subTotal;
    private boolean returned;
    private boolean judged;

    public OrderData() {
        pcount = 1;
        shopPrice = 1.00f;
        subTotal = 1.00f;
        returned = false;
        judged = false;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public float getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(float shopPrice) {
        this.shopPrice = shopPrice;
    }

    public float getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(float subTotal) {
        this.subTotal = subTotal;
    }

    public int getPcount() {
        return pcount;
    }

    public void setPcount(int pcount) {
        this.pcount = pcount;
    }

    public boolean isReturned() {
        return returned;
    }

    public void setReturned(boolean returned) {
        this.returned = returned;
    }

    public boolean isJudged() {
        return judged;
    }

    public void setJudged(boolean judged) {
        this.judged = judged;
    }
}
