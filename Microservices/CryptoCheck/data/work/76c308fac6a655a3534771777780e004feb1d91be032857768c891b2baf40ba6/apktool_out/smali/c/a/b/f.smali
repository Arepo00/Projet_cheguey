.class public Lc/a/b/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9c4

    iput v0, p0, Lc/a/b/f;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lc/a/b/f;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/a/b/f;->d:F

    return-void
.end method
