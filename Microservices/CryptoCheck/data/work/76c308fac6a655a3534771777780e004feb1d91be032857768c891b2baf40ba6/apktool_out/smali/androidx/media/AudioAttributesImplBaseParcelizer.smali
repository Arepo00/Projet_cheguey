.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lb/v/a;)Lb/q/c;
    .locals 3

    new-instance v0, Lb/q/c;

    invoke-direct {v0}, Lb/q/c;-><init>()V

    iget v1, v0, Lb/q/c;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lb/v/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/q/c;->a:I

    iget v1, v0, Lb/q/c;->b:I

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lb/v/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/q/c;->b:I

    iget v1, v0, Lb/q/c;->c:I

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lb/v/a;->i(II)I

    move-result v1

    iput v1, v0, Lb/q/c;->c:I

    iget v1, v0, Lb/q/c;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lb/v/a;->i(II)I

    move-result p0

    iput p0, v0, Lb/q/c;->d:I

    return-object v0
.end method

.method public static write(Lb/q/c;Lb/v/a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lb/q/c;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lb/v/a;->m(II)V

    iget v0, p0, Lb/q/c;->b:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lb/v/a;->m(II)V

    iget v0, p0, Lb/q/c;->c:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lb/v/a;->m(II)V

    iget p0, p0, Lb/q/c;->d:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lb/v/a;->m(II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method
