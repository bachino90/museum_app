//
//  MArt.m
//  museum_app
//
//  Created by Emiliano Bivachi on 05/09/14.
//  Copyright (c) 2014 Emiliano Bivachi. All rights reserved.
//

#import "MArt.h"

@implementation MArt

- (id)init {
    self = [super init];
    if (self) {
        self.artist = @"";
        self.name = @"";
        self.year = @"";
        self.info = @"";
        self.image = @"";
        self.size = @"";
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [self init];
    if (self) {
        self.artist = dict[@"artist"];
        self.name = dict[@"name"];
        self.year = dict[@"year"];
        self.info = dict[@"info"];
        self.image = dict[@"image"];
        self.size = dict[@"size"];
    }
    return self;
}

+ (NSArray *)testData {
    
    MArt *anatomia = [[MArt alloc]init];
    anatomia.artist = @"Rembrant";
    anatomia.name = @"Lección de anatomía del Dr. Nicolaes Tulp";
    anatomia.year = @"1632";
    anatomia.image = @"http://3.bp.blogspot.com/_sD9yQTE5QZQ/R3FQcuZVufI/AAAAAAAACj4/zwblcw-A76w/s400/leccion1.jpg";
    anatomia.size = @"1,2m x 1m";
    anatomia.info = @"El cuadro muestra una lección de anatomía impartida por el doctor Nicolaes Tulp a un grupo de cirujanos. El doctor Nicolaes Tulp está representado explicando la musculatura del brazo a profesionales de la medicina. El cadáver pertenece al criminal Aris Kindt (Adriaan Adriaanszoon), de 41 años, ahorcado ese mismo día por robo a mano armada. Algunos de los espectadores son varios patrones que pagaban comisiones por ser incluidos en la pintura./n/nEl evento puede fecharse el 16 de enero de 1632: la cofradía de cirujanos de Ámsterdam, de la que Tulp era el anatomista oficial de la ciudad, permitía sólo una disección pública al año, en invierno, para mejor conservación del cuerpo, y éste tenía que ser de un criminal ejecutado. Por ello, las clases de anatomía con disección fueron en el siglo XVII actos poco frecuentes y espectaculares, hasta el punto de convertirse en acontecimientos sociales. Tenían lugar en salas de conferencias que eran realmente teatros; en este caso era el Waag, un «teatro de anatomía». Podían atender a la lección estudiantes, colegas y el público en general, a cambio del pago de la entrada. Los espectadores están vestidos de manera adecuada a una ocasión social tan solemne. Se piensa que, con la excepción de las figuras del fondo y la izquierda, estas personas fueron añadidas a la pintura más tarde./n/nAdemás de Nicolaes Tulp están representados también los cirujanos Jacob Blok, Hartman Hartmanszoon, Adraen Slabran, Jacob de Witt, Mathijs Kalkoen, Jacob Koolvelt y Frans Van Loenen. Sus nombres están en la lista que uno de ellos tiene en su mano.";
    
    return @[anatomia];
}

@end
