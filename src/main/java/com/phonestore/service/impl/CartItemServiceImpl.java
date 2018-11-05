package com.phonestore.service.impl;

import com.phonestore.dao.CartItemDao;
import com.phonestore.model.Cart;
import com.phonestore.model.CartItem;
import com.phonestore.service.CartItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartItemServiceImpl implements CartItemService {

    @Autowired
    private CartItemDao cartItemDao;


    public void addCartItem(CartItem cartItem) {
        cartItemDao.addCartItem(cartItem);
    }

    public void removeCartItem(CartItem cartItem) {
        cartItemDao.removeCartItem(cartItem);
    }

    public void removeAllCartItems(Cart cart) {
        cartItemDao.removeAllCartItems(cart);
    }

    public CartItem getCartItemByProductId(int productId){
        return cartItemDao.getCartItemByProductId(productId);
    }
}
