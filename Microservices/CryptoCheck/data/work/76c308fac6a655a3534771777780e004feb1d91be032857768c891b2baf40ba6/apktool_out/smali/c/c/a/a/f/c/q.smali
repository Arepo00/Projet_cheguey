.class public abstract Lc/c/a/a/f/c/q;
.super Lc/c/a/a/f/c/l;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/f/c/l<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public transient c:Lc/c/a/a/f/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/f/c/n<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/f/c/l;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lc/c/a/a/f/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/f/c/n<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/f/c/q;->c:Lc/c/a/a/f/c/n;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lc/c/a/a/f/c/v;

    .line 1
    new-instance v1, Lc/c/a/a/f/c/u;

    invoke-direct {v1, v0}, Lc/c/a/a/f/c/u;-><init>(Lc/c/a/a/f/c/v;)V

    .line 2
    iput-object v1, p0, Lc/c/a/a/f/c/q;->c:Lc/c/a/a/f/c/n;

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lc/c/a/a/c/l/q;->o0(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/c/l;->b()Lc/c/a/a/f/c/y;

    move-result-object v0

    return-object v0
.end method
