@green: #1FB30A;
@red: #FE0E24;
@pink: #FE0EC8;

@contour-line-uphill-edge-colour: lighten(@green, 10);
@contour-line-downhill-edge-colour: lighten(@red, 10);
@contour-line-width: 2.0;
@contour-line-smooth: 1.0;
@contour-line-multiplier: 2.0;
@contour-line-bigger-opacity: 1.0;
@contour-line-smaller-opacity: 0.8;

@contour-text-database-mapping: "[height]";
@contour-text-colour: @pink;
@contour-text-halo-colour: #FFFFFF;
@contour-text-halo-radius: 3;
@contour-text-line-placement: line;
@contour-text-spacing: 1000;
@contour-text-size: 20;


//
// contour lines
//

#contours2 {
  line-color: @contour-line-downhill-edge-colour;
  line-smooth: @contour-line-smooth;
  line-width: @contour-line-width;
  
  [zoom>=16] {
    line-opacity: @contour-line-smaller-opacity;
  }
}

#contours2::uphill {
  line-color: @contour-line-uphill-edge-colour;
  line-smooth: @contour-line-smooth;
  line-width: @contour-line-width;
  line-offset: @contour-line-width;

  [zoom>=16] {
    line-opacity: @contour-line-smaller-opacity;
  }
}

#contours10 {
  line-color: @contour-line-downhill-edge-colour;
  line-smooth: @contour-line-smooth;
  
  [zoom>=14][zoom<16] {
    line-opacity: @contour-line-smaller-opacity;
    line-width: @contour-line-width;
  }
  [zoom>=16] {
    line-opacity: @contour-line-bigger-opacity;
    line-width: @contour-line-width * @contour-line-multiplier;
  }
}

#contours10::uphill {
  line-color: @contour-line-uphill-edge-colour;
  line-smooth: @contour-line-smooth;

  [zoom>=14][zoom<16] {
    line-opacity: @contour-line-smaller-opacity;
    line-width: @contour-line-width;
    line-offset: @contour-line-width;
  }
  [zoom>=16] {
    line-opacity: @contour-line-bigger-opacity;
    line-width: @contour-line-width * @contour-line-multiplier;
    line-offset: @contour-line-width * @contour-line-multiplier;
  }
}

#contours50 {
  line-color: @contour-line-downhill-edge-colour;
  line-smooth: @contour-line-smooth;
  
  [zoom>=12][zoom<14] {
    line-opacity: @contour-line-smaller-opacity;
    line-width: @contour-line-width;
  }
  [zoom>=14] {
    line-opacity: @contour-line-bigger-opacity;
    line-width: @contour-line-width * @contour-line-multiplier;
  }
}

#contours50::uphill {
  line-color: @contour-line-uphill-edge-colour;
  line-smooth: @contour-line-smooth;
  
  [zoom>=12][zoom<14] {
    line-opacity: @contour-line-smaller-opacity;
    line-width: @contour-line-width;
    line-offset: @contour-line-width;
  }
  [zoom>=14] {
    line-opacity: @contour-line-bigger-opacity;
    line-width: @contour-line-width * @contour-line-multiplier;
    line-offset: @contour-line-width * @contour-line-multiplier;
  }
}

#contours200[zoom>=10] {
  line-color: @contour-line-downhill-edge-colour;
  line-smooth: @contour-line-smooth;
  line-width: @contour-line-width * @contour-line-multiplier;
  line-opacity: @contour-line-bigger-opacity;
}

#contours200::uphill[zoom>=10] {
  line-color: @contour-line-uphill-edge-colour;
  line-smooth: @contour-line-smooth;
  line-width: @contour-line-width * @contour-line-multiplier;
  line-offset: @contour-line-width * @contour-line-multiplier;
  line-opacity: @contour-line-bigger-opacity;
}

//
// contour text
//

#contours-text10 {
  text-name: @contour-text-database-mapping;
  text-face-name: @book-fonts;
  text-placement: @contour-text-line-placement;
  text-fill: @contour-text-colour;
  text-halo-fill: @contour-text-halo-colour;
  text-halo-radius: @contour-text-halo-radius;

  [zoom >= 14] {
    text-spacing: @contour-text-spacing;
    text-size: @contour-text-size;
  }
}

#contours-text50 {
  text-name: @contour-text-database-mapping;
  text-face-name: @book-fonts;
  text-placement: @contour-text-line-placement;
  text-fill: @contour-text-colour;
  text-halo-fill: @contour-text-halo-colour;
  text-halo-radius: @contour-text-halo-radius;

  [zoom >= 12] {
    text-spacing: @contour-text-spacing;
    text-size: @contour-text-size;
  }
}

#contours-text200 {
  text-name: @contour-text-database-mapping;
  text-face-name: @book-fonts;
  text-placement: @contour-text-line-placement;
  text-fill: @contour-text-colour;
  text-halo-fill: @contour-text-halo-colour;
  text-halo-radius: @contour-text-halo-radius;

  [zoom >= 10] {
    text-spacing: @contour-text-spacing;
    text-size: @contour-text-size;
  }
}