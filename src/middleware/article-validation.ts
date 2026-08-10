import { z } from "zod";
import { Request, Response, NextFunction } from "express";

const requiredArticleDataSchema = z.object({
  title: z
    .string()
    .min(3, "Title must be at least 3 characters")
    .max(50, "Title must not exceed 50 characters")
    .trim(),
  body: z
    .string()
    .min(3, "Body must be at least 3 characters")
    .max(1000, "Body must not exceed 1000 characters")
    .trim(),
  category: z
    .string()
    .min(3, "Category must be at least 3 characters")
    .max(50, "Category must not exceed 50 characters")
    .trim(),
});

export function validateRequiredArticleData(
  req: Request,
  res: Response,
  next: NextFunction,
) {
  const result = requiredArticleDataSchema.safeParse(req.body);

  if (!result.success) {
    return res.status(404).json({
      error: "Invalid data",
      details: result.error.issues.map((issue) => issue.message),
    });
  }

  next();
}
