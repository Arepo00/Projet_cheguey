.class public abstract Lc/c/a/a/c/k/k/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/k/k/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lc/c/a/a/c/k/a$b;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Lc/c/a/a/c/c;

.field public final b:Z


# direct methods
.method public constructor <init>([Lc/c/a/a/c/c;ZLc/c/a/a/c/k/k/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/k/k/k;->a:[Lc/c/a/a/c/c;

    iput-boolean p2, p0, Lc/c/a/a/c/k/k/k;->b:Z

    return-void
.end method

.method public static a()Lc/c/a/a/c/k/k/k$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/c/a/a/c/k/a$b;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/c/a/a/c/k/k/k$a<",
            "TA;TResultT;>;"
        }
    .end annotation

    new-instance v0, Lc/c/a/a/c/k/k/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/c/k/k/k$a;-><init>(Lc/c/a/a/c/k/k/c0;)V

    return-object v0
.end method
