import QtQuick 2.0
import QtQuick.Controls 1.4
import "../Components"
Item {
anchors.fill: parent


      TextInRectangle
      {
          id:mainInfo

          anchors.left: parent.left
          anchors.leftMargin: 143
          anchors.top: parent.top
          anchors.topMargin: 15
        // anchors.right: parent.right
        // anchors.rightMargin: 151
             fontSize:12

          innerText:"main info"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:birthPlace

          anchors.left: parent.left
          anchors.leftMargin: 45
          anchors.top: mainInfo.bottom
          anchors.topMargin: 15
        // anchors.right: parent.right
        // anchors.rightMargin: 151


          innerText:"birth place"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:birthPlaceExample

          anchors.left: birthPlace.right
          anchors.leftMargin: 24
          anchors.top: mainInfo.bottom
          anchors.topMargin: 15
        // anchors.right: parent.right
        // anchors.rightMargin: 151


          innerText:"city, country"

          color:"#F4EEEE"
      }

      TextInRectangle
      {
          id:education

          anchors.left: parent.left
          anchors.leftMargin: 45
          anchors.top: birthPlace.bottom
          anchors.topMargin: 10



          innerText:"education"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:educationExampleSchool

          anchors.left: education.right
          anchors.leftMargin: 24
          anchors.top: birthPlace.bottom
          anchors.topMargin: 10



          innerText:"school"

          color:"#F4EEEE"
      }
      TextInRectangle
      {
          id:educationExampleUniver

          anchors.left: educationExampleSchool.right
          anchors.leftMargin: 5
          anchors.top: birthPlace.bottom
          anchors.topMargin: 10



          innerText:"unversity"

          color:"#F4EEEE"
      }

      TextInRectangle
      {
          id:career

          anchors.left: parent.left
          anchors.leftMargin: 45
          anchors.top: education.bottom
          anchors.topMargin: 10



          innerText:"career"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:careerExample

          anchors.left: career.right
          anchors.leftMargin: 24
          anchors.top: education.bottom
          anchors.topMargin: 10



          innerText:"work place"

          color:"#F4EEEE"
      }

      TextInRectangle
      {
          id:languages

          anchors.left: parent.left
          anchors.leftMargin: 45
          anchors.top: careerExample.bottom
          anchors.topMargin: 10



          innerText:"career"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:languagesExample1

          anchors.left: languages.right
          anchors.leftMargin: 24
          anchors.top: careerExample.bottom
          anchors.topMargin: 10



          innerText:"ukranian"

          color:"#F4EEEE"
      }
      TextInRectangle
      {
          id:languagesExample2

          anchors.left: languagesExample1.right
          anchors.leftMargin:5
          anchors.top: careerExample.bottom
          anchors.topMargin: 10



          innerText:"english"

          color:"#F4EEEE"
      }
      TextInRectangle
      {
          id:languagesExample3

          anchors.left: languagesExample2.right
          anchors.leftMargin:5
          anchors.top: careerExample.bottom
          anchors.topMargin: 10



          innerText:"russian"

          color:"#F4EEEE"
      }

      TextInRectangle
      {
          id:interests

          anchors.left: parent.left
          anchors.leftMargin:152
          anchors.top: languages.bottom
          anchors.topMargin: 17

            fontSize:12

          innerText:"interests"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:hobbies

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: interests.bottom
          anchors.topMargin: 17

            fontSize:11

          innerText:"hobbies"

          color:"#C4C4C4"
      }
      TextInRectangle
      {
          id:interestsEx

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: hobbies.bottom
          anchors.topMargin: 12



          innerText:"interests"

          color:"#C4C4C4"
      }

      TextInRectangle
      {
          id:favFilms

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: hobbies.bottom
          anchors.topMargin: 12



          innerText:"fav. films"

          color:"#C4C4C4"
      }
      TextInRectangle
      {
          id:favBooks

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: favFilms.bottom
          anchors.topMargin: 12



          innerText:"fav. books"

          color:"#C4C4C4"
      }
      TextInRectangle
      {
          id:favMusic

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: favBooks.bottom
          anchors.topMargin: 12



          innerText:"fav. music"

          color:"#C4C4C4"
      }
      TextInRectangle
      {
          id:smthElse

          anchors.left: parent.left
          anchors.leftMargin:45
          anchors.top: favMusic.bottom
          anchors.topMargin: 12



          innerText:"smth. else"

          color:"#C4C4C4"
      }
  }
