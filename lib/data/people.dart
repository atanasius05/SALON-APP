//* 1. Kelas Person
class Person{
  final String name;
  final String phone;
  final String picture;
  const Person(this.name, this.phone, this.picture);
}

final List<Person> people = 
    _people.map((e) => Person(e['name'] as String, e['phone'] as String,e['picture'] as String)).toList(growable: false);

final List<Map<String,Object>> _people = 
[
  {
    "_id": "66f6caae2182774ad2ffac47",
    "index": 0,
    "guid": "797b80bb-a14b-4df7-9c9d-67a8a0cf3025",
    "isActive": false,
    "balance": "\$2,675.00",
    "picture": "http://placehold.it/32x32",
    "age": 40,
    "eyeColor": "green",
    "name": "Owen Mcclain",
    "gender": "male",
    "company": "PREMIANT",
    "email": "owenmcclain@premiant.com",
    "phone": "+1 (957) 520-3673",
    "address": "851 Hancock Street, Rew, Michigan, 1505",
    "about": "Veniam nulla quis nisi nostrud et anim magna eiusmod nisi. Excepteur qui aliquip esse dolor pariatur id tempor magna. Et do reprehenderit do pariatur proident sit incididunt amet cillum.\r\n",
    "registered": "2019-12-04T11:56:52 -07:00",
    "latitude": -31.019818,
    "longitude": 13.966255,
    "tags": [
      "occaecat",
      "anim",
      "aliqua",
      "incididunt",
      "ipsum",
      "ad",
      "cupidatat"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Bernadette Mendez"
      },
      {
        "id": 1,
        "name": "Bryant Ruiz"
      },
      {
        "id": 2,
        "name": "Jimenez Vasquez"
      }
    ],
    "greeting": "Hello, Owen Mcclain! You have 10 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f6caae9b643229c3577c10",
    "index": 1,
    "guid": "66bf3958-eeb5-4b6c-b572-da465fb06d76",
    "isActive": true,
    "balance": "\$1,907.91",
    "picture": "http://placehold.it/32x32",
    "age": 27,
    "eyeColor": "blue",
    "name": "Holder Cummings",
    "gender": "male",
    "company": "GEEKNET",
    "email": "holdercummings@geeknet.com",
    "phone": "+1 (814) 416-3494",
    "address": "319 Noble Street, Fresno, Mississippi, 4553",
    "about": "Commodo dolor commodo adipisicing veniam adipisicing consequat laboris magna cupidatat culpa incididunt officia veniam. Laboris consectetur et nostrud quis pariatur. Dolore Lorem culpa minim aliqua labore proident. Enim laborum amet laboris eiusmod pariatur elit ullamco ea laboris tempor.\r\n",
    "registered": "2021-10-02T11:11:13 -07:00",
    "latitude": -20.352534,
    "longitude": 138.497181,
    "tags": [
      "occaecat",
      "duis",
      "laboris",
      "eiusmod",
      "fugiat",
      "quis",
      "aute"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Heather Stafford"
      },
      {
        "id": 1,
        "name": "Dejesus Lawrence"
      },
      {
        "id": 2,
        "name": "Cunningham Leblanc"
      }
    ],
    "greeting": "Hello, Holder Cummings! You have 2 unread messages.",
    "favoriteFruit": "strawberry"
  },
  {
    "_id": "66f6caae22e60459eb6cadc8",
    "index": 2,
    "guid": "04cda43f-af5a-4804-9c67-59443676541e",
    "isActive": true,
    "balance": "\$2,843.80",
    "picture": "http://placehold.it/32x32",
    "age": 33,
    "eyeColor": "brown",
    "name": "Mattie Sawyer",
    "gender": "female",
    "company": "CEPRENE",
    "email": "mattiesawyer@ceprene.com",
    "phone": "+1 (990) 446-2096",
    "address": "596 Madison Street, Sexton, Marshall Islands, 8399",
    "about": "Amet commodo veniam enim laborum eiusmod. Voluptate excepteur sint incididunt sunt pariatur sit minim incididunt aute nulla ea irure commodo. Sint proident occaecat proident commodo cillum do dolore in qui. Aliqua enim ut culpa nulla. Officia cupidatat aliquip dolor magna.\r\n",
    "registered": "2018-04-03T01:54:44 -07:00",
    "latitude": -78.148761,
    "longitude": 127.686397,
    "tags": [
      "nostrud",
      "occaecat",
      "elit",
      "sit",
      "ipsum",
      "irure",
      "aute"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Lindsay Mccoy"
      },
      {
        "id": 1,
        "name": "Cooper Aguirre"
      },
      {
        "id": 2,
        "name": "Tamera Douglas"
      }
    ],
    "greeting": "Hello, Mattie Sawyer! You have 10 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66f6caaeab42437013f8b7a8",
    "index": 3,
    "guid": "a3814fca-1817-4ed0-b5e0-c7d491b7830c",
    "isActive": false,
    "balance": "\$2,904.64",
    "picture": "http://placehold.it/32x32",
    "age": 34,
    "eyeColor": "green",
    "name": "Castaneda Myers",
    "gender": "male",
    "company": "COMTOUR",
    "email": "castanedamyers@comtour.com",
    "phone": "+1 (917) 463-3465",
    "address": "396 Wilson Street, Frierson, South Dakota, 9378",
    "about": "Quis non enim sit nisi nisi excepteur occaecat deserunt velit proident fugiat. Incididunt officia do magna tempor ut. Sint veniam commodo ex do nulla.\r\n",
    "registered": "2018-12-04T08:25:46 -07:00",
    "latitude": -55.199176,
    "longitude": 167.268893,
    "tags": [
      "eiusmod",
      "deserunt",
      "aute",
      "minim",
      "veniam",
      "consectetur",
      "dolore"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Hull Oneal"
      },
      {
        "id": 1,
        "name": "Augusta Schultz"
      },
      {
        "id": 2,
        "name": "Beatriz Huber"
      }
    ],
    "greeting": "Hello, Castaneda Myers! You have 6 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66f6caae085fe2a47973836c",
    "index": 4,
    "guid": "04d5a204-764c-4fb0-821a-2f1205143fc4",
    "isActive": true,
    "balance": "\$1,589.26",
    "picture": "http://placehold.it/32x32",
    "age": 35,
    "eyeColor": "brown",
    "name": "Wilder Sanders",
    "gender": "male",
    "company": "EVENTEX",
    "email": "wildersanders@eventex.com",
    "phone": "+1 (985) 407-2722",
    "address": "804 Ovington Avenue, Gracey, Ohio, 9416",
    "about": "Elit laborum enim ipsum magna minim proident elit commodo qui elit eiusmod est nulla. Occaecat incididunt nostrud veniam eu cupidatat amet ipsum commodo fugiat. Eu ex voluptate ut aliqua cillum est. Ipsum fugiat magna occaecat proident velit ea occaecat exercitation anim exercitation id deserunt sint commodo. Duis irure enim aute irure ut ad pariatur. Fugiat consectetur dolor occaecat sit do eiusmod tempor velit fugiat consequat do incididunt aute fugiat. Voluptate id eu velit proident.\r\n",
    "registered": "2016-12-30T01:05:03 -07:00",
    "latitude": 49.300832,
    "longitude": 21.701176,
    "tags": [
      "elit",
      "anim",
      "laborum",
      "in",
      "do",
      "do",
      "non"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Mae Curtis"
      },
      {
        "id": 1,
        "name": "May Bond"
      },
      {
        "id": 2,
        "name": "Schneider Stuart"
      }
    ],
    "greeting": "Hello, Wilder Sanders! You have 9 unread messages.",
    "favoriteFruit": "banana"
  },
  {
    "_id": "66f6caae0eab7668c674e370",
    "index": 5,
    "guid": "ab56d07f-37f3-4f1d-b85f-0c9e4e913478",
    "isActive": false,
    "balance": "\$2,550.23",
    "picture": "http://placehold.it/32x32",
    "age": 27,
    "eyeColor": "brown",
    "name": "Joanne Cash",
    "gender": "female",
    "company": "MOMENTIA",
    "email": "joannecash@momentia.com",
    "phone": "+1 (883) 444-2321",
    "address": "580 Knickerbocker Avenue, Roberts, Tennessee, 7905",
    "about": "Duis ea cupidatat ullamco amet pariatur ea amet quis consequat eiusmod ut. Commodo non laborum exercitation laborum dolor consectetur irure minim mollit sint excepteur laborum. Laboris sit ex aliqua deserunt amet velit Lorem fugiat. Consectetur deserunt quis in ad aliquip proident esse qui eu ea fugiat et excepteur ut.\r\n",
    "registered": "2021-07-03T10:19:23 -07:00",
    "latitude": 67.989056,
    "longitude": 39.935938,
    "tags": [
      "dolore",
      "velit",
      "officia",
      "ullamco",
      "Lorem",
      "occaecat",
      "anim"
    ],
    "friends": [
      {
        "id": 0,
        "name": "Branch Chandler"
      },
      {
        "id": 1,
        "name": "Figueroa Herrera"
      },
      {
        "id": 2,
        "name": "Tonia Kemp"
      }
    ],
    "greeting": "Hello, Joanne Cash! You have 5 unread messages.",
    "favoriteFruit": "apple"
  }
];