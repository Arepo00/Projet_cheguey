.class public final Lc/c/a/a/f/c/u;
.super Lc/c/a/a/f/c/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/f/c/n<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/a/f/c/v;


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/v;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/f/c/u;->d:Lc/c/a/a/f/c/v;

    invoke-direct {p0}, Lc/c/a/a/f/c/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/c/a/a/f/c/u;->d:Lc/c/a/a/f/c/v;

    .line 1
    iget v0, v0, Lc/c/a/a/f/c/v;->f:I

    .line 2
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->m0(II)I

    iget-object v0, p0, Lc/c/a/a/f/c/u;->d:Lc/c/a/a/f/c/v;

    .line 3
    iget-object v0, v0, Lc/c/a/a/f/c/v;->e:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 4
    aget-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/c/a/a/f/c/u;->d:Lc/c/a/a/f/c/v;

    .line 1
    iget v0, v0, Lc/c/a/a/f/c/v;->f:I

    return v0
.end method
