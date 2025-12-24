.class public abstract Lb/g/b/i/l/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/g/b/i/l/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/b/i/l/m$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lb/g/b/i/d;

.field public c:Lb/g/b/i/l/k;

.field public d:Lb/g/b/i/d$a;

.field public e:Lb/g/b/i/l/g;

.field public f:I

.field public g:Z

.field public h:Lb/g/b/i/l/f;

.field public i:Lb/g/b/i/l/f;

.field public j:Lb/g/b/i/l/m$a;


# direct methods
.method public constructor <init>(Lb/g/b/i/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/g/b/i/l/g;

    invoke-direct {v0, p0}, Lb/g/b/i/l/g;-><init>(Lb/g/b/i/l/m;)V

    iput-object v0, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/b/i/l/m;->f:I

    iput-boolean v0, p0, Lb/g/b/i/l/m;->g:Z

    new-instance v0, Lb/g/b/i/l/f;

    invoke-direct {v0, p0}, Lb/g/b/i/l/f;-><init>(Lb/g/b/i/l/m;)V

    iput-object v0, p0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    new-instance v0, Lb/g/b/i/l/f;

    invoke-direct {v0, p0}, Lb/g/b/i/l/f;-><init>(Lb/g/b/i/l/m;)V

    iput-object v0, p0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    sget-object v0, Lb/g/b/i/l/m$a;->b:Lb/g/b/i/l/m$a;

    iput-object v0, p0, Lb/g/b/i/l/m;->j:Lb/g/b/i/l/m$a;

    iput-object p1, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    return-void
.end method


# virtual methods
.method public a(Lb/g/b/i/l/d;)V
    .locals 0

    return-void
.end method

.method public final b(Lb/g/b/i/l/f;Lb/g/b/i/l/f;I)V
    .locals 1

    iget-object v0, p1, Lb/g/b/i/l/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lb/g/b/i/l/f;->f:I

    iget-object p2, p2, Lb/g/b/i/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lb/g/b/i/l/f;Lb/g/b/i/l/f;ILb/g/b/i/l/g;)V
    .locals 2

    iget-object v0, p1, Lb/g/b/i/l/f;->l:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lb/g/b/i/l/f;->l:Ljava/util/List;

    iget-object v1, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p3, p1, Lb/g/b/i/l/f;->h:I

    iput-object p4, p1, Lb/g/b/i/l/f;->i:Lb/g/b/i/l/g;

    iget-object p2, p2, Lb/g/b/i/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lb/g/b/i/l/f;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 1

    if-nez p2, :cond_1

    iget-object p2, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget v0, p2, Lb/g/b/i/d;->n:I

    iget p2, p2, Lb/g/b/i/d;->m:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget v0, p2, Lb/g/b/i/d;->q:I

    iget p2, p2, Lb/g/b/i/d;->p:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez v0, :cond_2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_2
    if-eq p2, p1, :cond_3

    :goto_0
    move p1, p2

    :cond_3
    return p1
.end method

.method public final h(Lb/g/b/i/c;)Lb/g/b/i/l/f;
    .locals 3

    iget-object p1, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    iget-object p1, p1, Lb/g/b/i/c;->c:Lb/g/b/i/c$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p1, v1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, p1, Lb/g/b/i/l/l;->k:Lb/g/b/i/l/f;

    goto :goto_2

    :cond_2
    iget-object p1, v1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    :goto_0
    iget-object v0, p1, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    goto :goto_2

    :cond_4
    iget-object p1, v1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    goto :goto_1

    :cond_5
    iget-object p1, v1, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    :goto_1
    iget-object v0, p1, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    :goto_2
    return-object v0
.end method

.method public final i(Lb/g/b/i/c;I)Lb/g/b/i/l/f;
    .locals 2

    iget-object v0, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    if-nez p2, :cond_1

    iget-object p2, v0, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    goto :goto_0

    :cond_1
    iget-object p2, v0, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    :goto_0
    iget-object p1, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    iget-object p1, p1, Lb/g/b/i/c;->c:Lb/g/b/i/c$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    goto :goto_1

    :cond_3
    iget-object v1, p2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    :goto_1
    return-object v1
.end method

.method public j()J
    .locals 2

    iget-object v0, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v1, v0, Lb/g/b/i/l/f;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public l(Lb/g/b/i/c;Lb/g/b/i/c;I)V
    .locals 10

    invoke-virtual {p0, p1}, Lb/g/b/i/l/m;->h(Lb/g/b/i/c;)Lb/g/b/i/l/f;

    move-result-object v0

    invoke-virtual {p0, p2}, Lb/g/b/i/l/m;->h(Lb/g/b/i/c;)Lb/g/b/i/l/f;

    move-result-object v1

    iget-boolean v2, v0, Lb/g/b/i/l/f;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, Lb/g/b/i/l/f;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {p1}, Lb/g/b/i/c;->b()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, Lb/g/b/i/l/f;->g:I

    invoke-virtual {p2}, Lb/g/b/i/c;->b()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v4, v3, Lb/g/b/i/l/f;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget-object v4, p0, Lb/g/b/i/l/m;->d:Lb/g/b/i/d$a;

    sget-object v6, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    if-ne v4, v6, :cond_a

    .line 1
    iget v4, p0, Lb/g/b/i/l/m;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v3, 0x2

    if-eq v4, v3, :cond_5

    const/4 v3, 0x3

    if-eq v4, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget-object v8, v4, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v9, v8, Lb/g/b/i/l/m;->d:Lb/g/b/i/d$a;

    if-ne v9, v6, :cond_2

    iget v8, v8, Lb/g/b/i/l/m;->a:I

    if-ne v8, v3, :cond_2

    iget-object v4, v4, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v8, v4, Lb/g/b/i/l/m;->d:Lb/g/b/i/d$a;

    if-ne v8, v6, :cond_2

    iget v4, v4, Lb/g/b/i/l/m;->a:I

    if-ne v4, v3, :cond_2

    goto :goto_6

    :cond_2
    iget-object v3, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    if-nez p3, :cond_3

    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    goto :goto_0

    :cond_3
    iget-object v3, v3, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    :goto_0
    iget-object v3, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v4, v3, Lb/g/b/i/l/f;->j:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    .line 2
    iget v4, v4, Lb/g/b/i/d;->N:F

    if-ne p3, v7, :cond_4

    .line 3
    iget v3, v3, Lb/g/b/i/l/f;->g:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_1

    :cond_4
    iget v3, v3, Lb/g/b/i/l/f;->g:I

    int-to-float v3, v3

    mul-float v4, v4, v3

    add-float/2addr v4, v5

    float-to-int v3, v4

    :goto_1
    iget-object v4, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    goto :goto_5

    :cond_5
    iget-object v3, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    .line 4
    iget-object v3, v3, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v3, :cond_a

    if-nez p3, :cond_6

    .line 5
    iget-object v3, v3, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    goto :goto_2

    :cond_6
    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    :goto_2
    iget-object v4, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v4, v4, Lb/g/b/i/l/f;->j:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    if-nez p3, :cond_7

    iget v4, v4, Lb/g/b/i/d;->o:F

    goto :goto_3

    :cond_7
    iget v4, v4, Lb/g/b/i/d;->r:F

    :goto_3
    iget-object v3, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget v3, v3, Lb/g/b/i/l/f;->g:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    goto :goto_4

    :cond_8
    iget v3, v3, Lb/g/b/i/l/g;->m:I

    invoke-virtual {p0, v3, p3}, Lb/g/b/i/l/m;->g(II)I

    move-result v3

    iget-object v4, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_5

    :cond_9
    move v3, p2

    :goto_4
    iget-object v4, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-virtual {p0, v3, p3}, Lb/g/b/i/l/m;->g(II)I

    move-result v3

    :goto_5
    invoke-virtual {v4, v3}, Lb/g/b/i/l/g;->c(I)V

    .line 6
    :cond_a
    :goto_6
    iget-object v3, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v4, v3, Lb/g/b/i/l/f;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v3, v3, Lb/g/b/i/l/f;->g:I

    if-ne v3, p2, :cond_c

    iget-object p2, p0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    invoke-virtual {p2, p1}, Lb/g/b/i/l/f;->c(I)V

    iget-object p1, p0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    invoke-virtual {p1, v2}, Lb/g/b/i/l/f;->c(I)V

    return-void

    :cond_c
    iget-object p2, p0, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    if-nez p3, :cond_d

    .line 7
    iget p2, p2, Lb/g/b/i/d;->U:F

    goto :goto_7

    .line 8
    :cond_d
    iget p2, p2, Lb/g/b/i/d;->V:F

    :goto_7
    if-ne v0, v1, :cond_e

    .line 9
    iget p1, v0, Lb/g/b/i/l/f;->g:I

    iget v2, v1, Lb/g/b/i/l/f;->g:I

    const/high16 p2, 0x3f000000    # 0.5f

    :cond_e
    sub-int/2addr v2, p1

    iget-object p3, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget p3, p3, Lb/g/b/i/l/f;->g:I

    sub-int/2addr v2, p3

    iget-object p3, p0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float v0, v2

    mul-float v0, v0, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p3, p1}, Lb/g/b/i/l/f;->c(I)V

    iget-object p1, p0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-object p2, p0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget p2, p2, Lb/g/b/i/l/f;->g:I

    iget-object p3, p0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget p3, p3, Lb/g/b/i/l/f;->g:I

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lb/g/b/i/l/f;->c(I)V

    :cond_f
    :goto_8
    return-void
.end method
