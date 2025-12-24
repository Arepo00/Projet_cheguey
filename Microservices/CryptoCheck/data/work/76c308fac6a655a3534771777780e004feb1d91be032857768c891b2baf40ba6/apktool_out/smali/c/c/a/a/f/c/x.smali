.class public final Lc/c/a/a/f/c/x;
.super Lc/c/a/a/f/c/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/f/c/q<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient d:Lc/c/a/a/f/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/f/c/o<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient e:Lc/c/a/a/f/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/f/c/n<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/o;Lc/c/a/a/f/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/f/c/o<",
            "TK;*>;",
            "Lc/c/a/a/f/c/n<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/a/f/c/q;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/x;->d:Lc/c/a/a/f/c/o;

    iput-object p2, p0, Lc/c/a/a/f/c/x;->e:Lc/c/a/a/f/c/n;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/f/c/x;->e:Lc/c/a/a/f/c/n;

    .line 2
    invoke-virtual {v0, p1, p2}, Lc/c/a/a/f/c/n;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final b()Lc/c/a/a/f/c/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/f/c/y<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/a/f/c/x;->e:Lc/c/a/a/f/c/n;

    .line 2
    invoke-virtual {v0}, Lc/c/a/a/f/c/n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lc/c/a/a/f/c/y;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lc/c/a/a/f/c/x;->d:Lc/c/a/a/f/c/o;

    invoke-virtual {v0, p1}, Lc/c/a/a/f/c/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lc/c/a/a/f/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/f/c/n<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/f/c/x;->e:Lc/c/a/a/f/c/n;

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/c/x;->b()Lc/c/a/a/f/c/y;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/c/a/a/f/c/x;->d:Lc/c/a/a/f/c/o;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
