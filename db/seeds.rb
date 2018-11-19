# Initial Data for Role
@admin = Role.create(name: "Admin")
@student = Role.create(name: "Student")
# Admin
User.create(email: "admin@ait.asia",
            password: "secret123",
            password_confirmation: "secret123",
            role: @admin)
# Student
User.create(email: "student@ait.asia",
            password: "secret123",
            password_confirmation: "secret123",
            role: @student)