import { z } from "zod";
import { Request, Response, NextFunction } from "express";

const registerSchema = z.object({
  email: z.email("Email must be a valid email"),
  password: z
    .string()
    .regex(
      /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).{8,}$/,
      "Password must be at least 8 characters long and include uppercase, lowercase, number, and a special character",
    ),
});

const loginSchema = z.object({
  email: z.email("Email must be a valid email"),
  password: z.string(),
});

export function validateRegistration(
  req: Request,
  res: Response,
  next: NextFunction,
) {
  const result = registerSchema.safeParse(req.body);

  if (!result.success) {
    return res.status(404).json({
      error: "Register failed",
      details: result.error.issues.map((issue) => issue.message),
    });
  }
  next();
}

export function validateLogin(req: Request, res: Response, next: NextFunction) {
  const result = loginSchema.safeParse(req.body);

  if (!result.success) {
    return res.status(404).json({
      error: "Login failed",
      details: result.error.issues.map((issue) => issue.message),
    });
  }
  next();
}
