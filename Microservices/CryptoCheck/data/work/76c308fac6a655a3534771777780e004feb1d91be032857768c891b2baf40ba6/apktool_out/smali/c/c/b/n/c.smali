.class public Lc/c/b/n/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/n/f;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lc/c/b/n/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lc/c/b/n/e;",
            ">;",
            "Lc/c/b/n/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/b/n/e;

    check-cast p2, Lc/c/b/n/a;

    .line 2
    iget-object v0, p2, Lc/c/b/n/a;->a:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lc/c/b/n/a;->b:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    goto :goto_0

    :cond_0
    return-void
.end method
