.class public final Lc/c/a/a/f/c/m;
.super Lc/c/a/a/f/c/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/f/c/m<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public c:I

.field public final d:Lc/c/a/a/f/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/f/c/n<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/n;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/f/c/n<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    .line 1
    invoke-direct {p0}, Lc/c/a/a/f/c/z;-><init>()V

    invoke-static {p2, v0}, Lc/c/a/a/c/l/q;->A0(II)I

    iput v0, p0, Lc/c/a/a/f/c/m;->b:I

    iput p2, p0, Lc/c/a/a/f/c/m;->c:I

    .line 2
    iput-object p1, p0, Lc/c/a/a/f/c/m;->d:Lc/c/a/a/f/c/n;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    iget v1, p0, Lc/c/a/a/f/c/m;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    iget v1, p0, Lc/c/a/a/f/c/m;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/c/a/a/f/c/m;->c:I

    .line 3
    iget-object v1, p0, Lc/c/a/a/f/c/m;->d:Lc/c/a/a/f/c/n;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc/c/a/a/f/c/m;->c:I

    .line 3
    iget-object v1, p0, Lc/c/a/a/f/c/m;->d:Lc/c/a/a/f/c/n;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/a/f/c/m;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
