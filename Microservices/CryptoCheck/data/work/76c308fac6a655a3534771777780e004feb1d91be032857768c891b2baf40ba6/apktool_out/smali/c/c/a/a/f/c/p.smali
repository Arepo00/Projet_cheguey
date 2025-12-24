.class public final Lc/c/a/a/f/c/p;
.super Lc/c/a/a/f/c/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/f/c/n<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lc/c/a/a/f/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/a/f/c/n;II)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    invoke-direct {p0}, Lc/c/a/a/f/c/n;-><init>()V

    iput p2, p0, Lc/c/a/a/f/c/p;->d:I

    iput p3, p0, Lc/c/a/a/f/c/p;->e:I

    return-void
.end method


# virtual methods
.method public final c()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    invoke-virtual {v0}, Lc/c/a/a/f/c/l;->c()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    invoke-virtual {v0}, Lc/c/a/a/f/c/l;->d()I

    move-result v0

    iget v1, p0, Lc/c/a/a/f/c/p;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    invoke-virtual {v0}, Lc/c/a/a/f/c/l;->d()I

    move-result v0

    iget v1, p0, Lc/c/a/a/f/c/p;->d:I

    add-int/2addr v0, v1

    iget v1, p0, Lc/c/a/a/f/c/p;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f(II)Lc/c/a/a/f/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/c/a/a/f/c/n<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lc/c/a/a/f/c/p;->e:I

    invoke-static {p1, p2, v0}, Lc/c/a/a/c/l/q;->u0(III)V

    iget-object v0, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    iget v1, p0, Lc/c/a/a/f/c/p;->d:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lc/c/a/a/f/c/n;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lc/c/a/a/f/c/n;

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Lc/c/a/a/f/c/p;->e:I

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->m0(II)I

    iget-object v0, p0, Lc/c/a/a/f/c/p;->f:Lc/c/a/a/f/c/n;

    iget v1, p0, Lc/c/a/a/f/c/p;->d:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lc/c/a/a/f/c/p;->e:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/c/a/a/f/c/p;->f(II)Lc/c/a/a/f/c/n;

    move-result-object p1

    return-object p1
.end method
