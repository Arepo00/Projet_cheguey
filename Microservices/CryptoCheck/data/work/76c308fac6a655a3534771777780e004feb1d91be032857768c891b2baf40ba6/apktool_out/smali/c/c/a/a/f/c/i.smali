.class public final Lc/c/a/a/f/c/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/c/a/a/f/c/e;

.field public final b:Lc/c/a/a/f/c/h;

.field public final c:I


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/h;)V
    .locals 1

    sget-object v0, Lc/c/a/a/f/c/f;->b:Lc/c/a/a/f/c/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/i;->b:Lc/c/a/a/f/c/h;

    iput-object v0, p0, Lc/c/a/a/f/c/i;->a:Lc/c/a/a/f/c/e;

    const p1, 0x7fffffff

    iput p1, p0, Lc/c/a/a/f/c/i;->c:I

    return-void
.end method
