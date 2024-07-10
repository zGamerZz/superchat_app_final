import 'package:chatter/helpers.dart';
import 'package:flutter/material.dart';

const users = [
  userHamza,
  userSalvatore,
  userSacha,
  userDeven,
  userSahil,
  userReuben,
  userNash,
];

const userHamza = DemoUser(
  id: 'hamza',
  name: 'Hamza El Ghachtouli',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userSalvatore = DemoUser(
  id: 'salvatore',
  name: 'Salvatore Giordano',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userSacha = DemoUser(
  id: 'sacha',
  name: 'Sacha Arbonel',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userDeven = DemoUser(
  id: 'deven',
  name: 'Deven Joshi',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userSahil = DemoUser(
  id: 'sahil',
  name: 'Sahil Kumar',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userReuben = DemoUser(
  id: 'reuben',
  name: 'Reuben Turner',
  image: 'https://picsum.photos/seed/1/300/300',
);

const userNash = DemoUser(
  id: 'nash',
  name: 'Nash Ramdial',
  image: 'https://picsum.photos/seed/1/300/300',
);

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}
