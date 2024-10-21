import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  const person = await prisma.person.create({
    data: {
      fname: "William",
      lname: "Turner",
      eye_color: "BL",
      birth_date: "1972-05-27",
    },
  });
}
