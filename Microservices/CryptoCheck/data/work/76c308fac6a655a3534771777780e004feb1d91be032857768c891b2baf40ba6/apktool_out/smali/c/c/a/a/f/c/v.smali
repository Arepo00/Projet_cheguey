.class public final Lc/c/a/a/f/c/v;
.super Lc/c/a/a/f/c/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/f/c/q<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final transient d:Lc/c/a/a/f/c/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/f/c/o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final transient e:[Ljava/lang/Object;

.field public final transient f:I


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/o;[Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/f/c/o<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/a/a/f/c/q;-><init>()V

    iput-object p1, p0, Lc/c/a/a/f/c/v;->d:Lc/c/a/a/f/c/o;

    iput-object p2, p0, Lc/c/a/a/f/c/v;->e:[Ljava/lang/Object;

    iput p3, p0, Lc/c/a/a/f/c/v;->f:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;I)I
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/c/q;->f()Lc/c/a/a/f/c/n;

    move-result-object v0

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
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/a/f/c/q;->f()Lc/c/a/a/f/c/n;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lc/c/a/a/f/c/n;->b()Lc/c/a/a/f/c/y;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lc/c/a/a/f/c/v;->d:Lc/c/a/a/f/c/o;

    invoke-virtual {v2, v0}, Lc/c/a/a/f/c/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lc/c/a/a/f/c/v;->b()Lc/c/a/a/f/c/y;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lc/c/a/a/f/c/v;->f:I

    return v0
.end method
