<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="ca">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Registre d'Usuari (Manual)</title>
</head>

<body>

    <div class="main-container">
        <div class="w3-card-4 w3-white">
            <div class="w3-container w3-teal">
                <h2>Registre (Validació Manual)</h2>
            </div>

            <form id="registerForm" action="Register" method="POST" class="w3-container w3-padding-24">

                <p>
                    <label class="w3-text-grey">Username</label>
                    <input class="w3-input w3-border" type="text" id="username" name="username" required maxlength="30"
                        value="${user.username}" title="Username must have less than 30 characters" />
                </p>

                <p>
                    <label class="w3-text-grey">Name</label>
                    <input class="w3-input w3-border" type="text" id="name" name="name" required maxlength="30"
                        value="${user.name}" title="Name must have less than 30 characters" />
                </p>

                <p>
                    <label class="w3-text-grey">Email</label>
                    <input class="w3-input w3-border" type="email" id="email" name="email" required maxlength="30"
                        value="${user.email}" title=""/>
                </p>

                <p>
                    <label class="w3-text-grey">Password</label>
                    <input class="w3-input w3-border" type="password" id="password" name="password" required
                        pattern="^(?=.*[A-Z])(?=.*\d).{8,}$" value="${user.password}"
                        title="Password must have 1 capital letter, 1 number and at least 8 characters" />
                </p>

                <p>
                    <label class="w3-text-grey">Repeat password</label>
                    <input class="w3-input w3-border" type="password" id="confirmPassword"
                        name="confirmPassword" required value="${user.password}"
                        title="Passwords must be equal" />
                </p>

                <p>
                    <label class="w3-text-grey">Date Of Birth</label>
                    <input class="w3-input w3-border" type="date" id="dob" name="dob" required
                        value="${user.dob}" title="" />
                </p>

                <p>
                    <label class="w3-text-grey">Gender</label>
                    <select class="w3-input w3-border" name="gender" required>
                        <option value="">Select gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="nonbinary">Non-binary</option>
                        <option value="other">Other</option>
                    </select>
                </p>

                <p>
                    <label class="w3-text-grey">Country</label>
                    <input class="w3-input w3-border" type="text" id="country" name="country"
                        value="${user.country}" title="" />
                </p>

                <p>
                    <label class="w3-text-grey">Description</label>
                    <textarea class="w3-input w3-border" type="text" id="description" name="description"
                        value="${user.Description}" title="" style="height: 250px;"></textarea>
                </p>

                <p>
                    <label class="w3-text-grey">Profile picture</label>
                    <input class="w3-input w3-border"
                        type="file"
                        id="profpic"
                        name="profpic"
                        accept="image/*" />
                </p>

                <p>
                    <label class="w3-text-grey">Group To Join</label>
                    <input class="w3-input w3-border" type="text" id="gtj" name="gtj" maxlength="30"
                        value="${user.gtj}" title="" />
                </p>

                <button type="submit" class="w3-button w3-teal w3-block w3-section w3-padding">Enviar Registre</button>

            </form>
        </div>
    </div>

    <script>
        // Injectem els errors del servidor (Format Map K/V) per al JS
        const serverErrors = {
            <c:forEach var="error" items="${errors}">
                "${error.key}": "${error.value}",
            </c:forEach>
        };
    </script>
    <script src="js/validation.js"></script>

</body>

</html>