# Frontend

![img](greenlogo_readme.png)

## Installation
**Requirements:**
* Maven 2.3.3 and up
* MySQL server 5.0 and up
* Node.js version 7.7
* NPM v4.3.0


1. Clone the git repo
2. In the folder `backend/src/main/resources/` rename `application.properties.BAK` to `application.properties`
3. Create empty schema named “bop”
4. Open `application.properties` and change database settings according to your
SQL server setup.
  This is an example for an SQL server running on localhost with port 3306)
```java
spring.datasource.url=jdbc:mysql://localhost:3306/bop
spring.datasource.username=your-sql-server-username-here
spring.datasource.password=your-sql-server-password-here
...
```

5. open the `frontend` folder in a terminal, and run `npm install`

How to run application:
1. Run `backend/src/main/java/com/bop/backend/BopApplication.java`
2. Open terminal in the `frontend` folder and run
the command `ng serve`
3. Open URL [http://localhost:4200](http://localhost:4200) 

## Android version
[GitHub](https://github.com/NikitaZhevnitskiy/pj_android)


## Team
---

**Concept / Research**

Oda Humlung - Changiz Hosseini

**Art assets and design**

Ingrid Kjensli Moe - Elvira Semenova - Silje Johnsen

**Backend Architecture: RESTful web service**

Nikita Zhevnitskiy - Robert Eikeland

**Angular(2/4) Browser Client**

Nikita Zhevnitskiy - Clément Marescaux - Elvira Semenova


---
* Oda Humlung: [GitHub](https://github.com/CarnivoreOC) - [LinkedIn](https://www.linkedin.com/in/oda-humlung-b7ab20104/)
* Changiz Hosseini: [GitHub](https://github.com/CarnivoreOC) - [Changiz.net](http://www.changiz.net)
* Elvira Semenova: [GitHub](https://github.com/elvira7) - [LinkedIn](https://www.linkedin.com/in/elvira-semenova-94044269/)
* Nikita Zhevnitskiy: [GitHub](https://github.com/NikitaZhevnitskiy) - [LinkedIn](https://www.linkedin.com/in/nikita-zhevnitskiy/)
* Robert Eikeland: [GitHub](https://github.com/RobertEikeland)
* Clément Marescaux : [GitHub](https://github.com/clemarescx) - [LinkedIn](https://www.linkedin.com/in/clement-marescaux/)
* Silje Johnsen: [GitHub](https://github.com/sillyweee) - [LinkedIn](https://www.linkedin.com/in/silje-lilleeng-johnsen-87ab55134/)
* Ingrid Kjensli Moe: [LinkedIn](https://www.linkedin.com/in/ingridkjenslimoe/)