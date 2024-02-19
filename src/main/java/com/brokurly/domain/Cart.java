package com.brokurly.domain;

import com.brokurly.dto.CartDto;
import com.brokurly.dto.GoodsForCartDto;
import lombok.*;

@Getter
@Builder
@ToString
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class Cart {   //1. insert(넣을 값)할  값을 담을 Dto를 만듦
  private String custId;
  private String itemId;
  private int itemCnt;

  public CartDto makeFullDto(GoodsForCartDto goodsDto){   //setter
    int disPrice = goodsDto.getPrice() - goodsDto.getItemDcAmt();
    if (disPrice < 0)
      throw new RuntimeException("할인된 가격은 0원 보다 작을 수 없습니다.");

    return CartDto.builder()
        .itemId(itemId)
        .itemCnt(itemCnt)
        .name(goodsDto.getName()) //상품이름
        .price(goodsDto.getPrice()) //상품 원가
        .shipType(goodsDto.getShipType()) //배송타입(새벽배송)
        .pkgType(goodsDto.getPkgType()) //포장타입(냉장,냉동)
        .disPrice(disPrice) //할인된 금액
        .build();
  }

  //  public void changeStatus (GoodsDto goodsDto){ //getter
//    this.custId = goodsDto.getCustId();
//    this.itemId = goodsDto.getItemId();
//    this.itemCnt = cartDto.getItemCnt();
//  }
}