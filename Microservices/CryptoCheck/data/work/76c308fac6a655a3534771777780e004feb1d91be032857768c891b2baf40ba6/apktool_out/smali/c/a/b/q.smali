.class public Lc/a/b/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/b/q$a;,
        Lc/a/b/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lc/a/b/b$a;

.field public final c:Lc/a/b/u;

.field public d:Z


# direct methods
.method public constructor <init>(Lc/a/b/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/q;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/b/q;->a:Ljava/lang/Object;

    iput-object v0, p0, Lc/a/b/q;->b:Lc/a/b/b$a;

    iput-object p1, p0, Lc/a/b/q;->c:Lc/a/b/u;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lc/a/b/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/a/b/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/b/q;->d:Z

    iput-object p1, p0, Lc/a/b/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lc/a/b/q;->b:Lc/a/b/b$a;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/b/q;->c:Lc/a/b/u;

    return-void
.end method
