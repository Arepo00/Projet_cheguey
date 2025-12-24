.class public final Lc/c/a/a/c/k/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/k/a$f;,
        Lc/c/a/a/c/k/a$b;,
        Lc/c/a/a/c/k/a$g;,
        Lc/c/a/a/c/k/a$c;,
        Lc/c/a/a/c/k/a$d;,
        Lc/c/a/a/c/k/a$a;,
        Lc/c/a/a/c/k/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/c/a/a/c/k/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc/c/a/a/c/k/a$a;Lc/c/a/a/c/k/a$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lc/c/a/a/c/k/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lc/c/a/a/c/k/a$a<",
            "TC;TO;>;",
            "Lc/c/a/a/c/k/a$g<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/c/k/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/a/c/k/a;->a:Lc/c/a/a/c/k/a$a;

    return-void
.end method
