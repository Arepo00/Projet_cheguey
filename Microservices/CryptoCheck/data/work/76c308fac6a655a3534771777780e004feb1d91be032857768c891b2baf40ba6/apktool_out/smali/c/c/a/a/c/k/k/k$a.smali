.class public Lc/c/a/a/c/k/k/k$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/k/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field public a:Lc/c/a/a/c/k/k/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/i<",
            "TA;",
            "Lc/c/a/a/h/e<",
            "TResultT;>;>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:[Lc/c/a/a/c/c;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/c/k/k/k$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/a/c/k/k/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/c/k/k/k<",
            "TA;TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/c/k/k/k$a;->a:Lc/c/a/a/c/k/k/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lc/c/a/a/c/k/k/d0;

    iget-object v1, p0, Lc/c/a/a/c/k/k/k$a;->c:[Lc/c/a/a/c/c;

    iget-boolean v2, p0, Lc/c/a/a/c/k/k/k$a;->b:Z

    invoke-direct {v0, p0, v1, v2}, Lc/c/a/a/c/k/k/d0;-><init>(Lc/c/a/a/c/k/k/k$a;[Lc/c/a/a/c/c;Z)V

    return-object v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "execute parameter required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
