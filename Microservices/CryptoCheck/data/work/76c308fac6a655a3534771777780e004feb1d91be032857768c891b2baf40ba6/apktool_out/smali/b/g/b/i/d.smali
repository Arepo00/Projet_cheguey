.class public Lb/g/b/i/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/b/i/d$a;
    }
.end annotation


# instance fields
.field public A:Lb/g/b/i/c;

.field public B:Lb/g/b/i/c;

.field public C:Lb/g/b/i/c;

.field public D:Lb/g/b/i/c;

.field public E:Lb/g/b/i/c;

.field public F:Lb/g/b/i/c;

.field public G:[Lb/g/b/i/c;

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/b/i/c;",
            ">;"
        }
    .end annotation
.end field

.field public I:[Z

.field public J:[Lb/g/b/i/d$a;

.field public K:Lb/g/b/i/d;

.field public L:I

.field public M:I

.field public N:F

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:F

.field public V:F

.field public W:Ljava/lang/Object;

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Z

.field public a0:I

.field public b:Lb/g/b/i/l/c;

.field public b0:I

.field public c:Lb/g/b/i/l/c;

.field public c0:[F

.field public d:Lb/g/b/i/l/j;

.field public d0:[Lb/g/b/i/d;

.field public e:Lb/g/b/i/l/l;

.field public e0:[Lb/g/b/i/d;

.field public f:[Z

.field public g:[I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[I

.field public m:I

.field public n:I

.field public o:F

.field public p:I

.field public q:I

.field public r:F

.field public s:I

.field public t:F

.field public u:[I

.field public v:F

.field public w:Z

.field public x:Z

.field public y:Lb/g/b/i/c;

.field public z:Lb/g/b/i/c;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/b/i/d;->a:Z

    new-instance v1, Lb/g/b/i/l/j;

    invoke-direct {v1, p0}, Lb/g/b/i/l/j;-><init>(Lb/g/b/i/d;)V

    iput-object v1, p0, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    new-instance v1, Lb/g/b/i/l/l;

    invoke-direct {v1, p0}, Lb/g/b/i/l/l;-><init>(Lb/g/b/i/d;)V

    iput-object v1, p0, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    const/4 v1, 0x2

    new-array v2, v1, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Lb/g/b/i/d;->f:[Z

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lb/g/b/i/d;->g:[I

    const/4 v3, -0x1

    iput v3, p0, Lb/g/b/i/d;->h:I

    iput v3, p0, Lb/g/b/i/d;->i:I

    iput v0, p0, Lb/g/b/i/d;->j:I

    iput v0, p0, Lb/g/b/i/d;->k:I

    new-array v4, v1, [I

    iput-object v4, p0, Lb/g/b/i/d;->l:[I

    iput v0, p0, Lb/g/b/i/d;->m:I

    iput v0, p0, Lb/g/b/i/d;->n:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lb/g/b/i/d;->o:F

    iput v0, p0, Lb/g/b/i/d;->p:I

    iput v0, p0, Lb/g/b/i/d;->q:I

    iput v4, p0, Lb/g/b/i/d;->r:F

    iput v3, p0, Lb/g/b/i/d;->s:I

    iput v4, p0, Lb/g/b/i/d;->t:F

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    iput-object v4, p0, Lb/g/b/i/d;->u:[I

    const/4 v4, 0x0

    iput v4, p0, Lb/g/b/i/d;->v:F

    iput-boolean v0, p0, Lb/g/b/i/d;->w:Z

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->c:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->d:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->e:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->f:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->g:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->i:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->D:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->j:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->E:Lb/g/b/i/c;

    new-instance v5, Lb/g/b/i/c;

    sget-object v6, Lb/g/b/i/c$a;->h:Lb/g/b/i/c$a;

    invoke-direct {v5, p0, v6}, Lb/g/b/i/c;-><init>(Lb/g/b/i/d;Lb/g/b/i/c$a;)V

    iput-object v5, p0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    const/4 v6, 0x6

    new-array v6, v6, [Lb/g/b/i/c;

    iget-object v7, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    aput-object v7, v6, v0

    iget-object v7, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    aput-object v7, v6, v1

    iget-object v7, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    iget-object v7, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    aput-object v7, v6, v2

    const/4 v2, 0x5

    aput-object v5, v6, v2

    iput-object v6, p0, Lb/g/b/i/d;->G:[Lb/g/b/i/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    new-array v5, v1, [Z

    iput-object v5, p0, Lb/g/b/i/d;->I:[Z

    new-array v5, v1, [Lb/g/b/i/d$a;

    sget-object v6, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    aput-object v6, v5, v0

    aput-object v6, v5, v8

    iput-object v5, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v5, 0x0

    iput-object v5, p0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iput v0, p0, Lb/g/b/i/d;->L:I

    iput v0, p0, Lb/g/b/i/d;->M:I

    iput v4, p0, Lb/g/b/i/d;->N:F

    iput v3, p0, Lb/g/b/i/d;->O:I

    iput v0, p0, Lb/g/b/i/d;->P:I

    iput v0, p0, Lb/g/b/i/d;->Q:I

    iput v0, p0, Lb/g/b/i/d;->R:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lb/g/b/i/d;->U:F

    iput v3, p0, Lb/g/b/i/d;->V:F

    iput v0, p0, Lb/g/b/i/d;->X:I

    iput-object v5, p0, Lb/g/b/i/d;->Y:Ljava/lang/String;

    iput-object v5, p0, Lb/g/b/i/d;->Z:Ljava/lang/String;

    iput v0, p0, Lb/g/b/i/d;->a0:I

    iput v0, p0, Lb/g/b/i/d;->b0:I

    new-array v3, v1, [F

    fill-array-data v3, :array_3

    iput-object v3, p0, Lb/g/b/i/d;->c0:[F

    new-array v3, v1, [Lb/g/b/i/d;

    aput-object v5, v3, v0

    aput-object v5, v3, v8

    iput-object v3, p0, Lb/g/b/i/d;->d0:[Lb/g/b/i/d;

    new-array v1, v1, [Lb/g/b/i/d;

    aput-object v5, v1, v0

    aput-object v5, v1, v8

    iput-object v1, p0, Lb/g/b/i/d;->e0:[Lb/g/b/i/d;

    .line 1
    iget-object v0, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->D:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->E:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/g/b/i/d;->H:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A(Lb/g/b/i/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public B(I)V
    .locals 1

    iput p1, p0, Lb/g/b/i/d;->L:I

    iget v0, p0, Lb/g/b/i/d;->S:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lb/g/b/i/d;->L:I

    :cond_0
    return-void
.end method

.method public C(ZZ)V
    .locals 8

    sget-object v0, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    iget-object v1, p0, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    .line 1
    iget-boolean v2, v1, Lb/g/b/i/l/m;->g:Z

    and-int/2addr p1, v2

    .line 2
    iget-object v2, p0, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    .line 3
    iget-boolean v3, v2, Lb/g/b/i/l/m;->g:Z

    and-int/2addr p2, v3

    .line 4
    iget-object v3, v1, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget v3, v3, Lb/g/b/i/l/f;->g:I

    iget-object v4, v2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget v4, v4, Lb/g/b/i/l/f;->g:I

    iget-object v1, v1, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v1, v1, Lb/g/b/i/l/f;->g:I

    iget-object v2, v2, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v2, v2, Lb/g/b/i/l/f;->g:I

    sub-int v5, v1, v3

    sub-int v6, v2, v4

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    if-ltz v6, :cond_0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_0

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    if-eq v4, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v2, v5, :cond_0

    if-ne v2, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    if-eqz p1, :cond_2

    iput v3, p0, Lb/g/b/i/d;->P:I

    :cond_2
    if-eqz p2, :cond_3

    iput v4, p0, Lb/g/b/i/d;->Q:I

    :cond_3
    iget v3, p0, Lb/g/b/i/d;->X:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    iput v7, p0, Lb/g/b/i/d;->L:I

    iput v7, p0, Lb/g/b/i/d;->M:I

    return-void

    :cond_4
    if-eqz p1, :cond_6

    iget-object p1, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object p1, p1, v7

    if-ne p1, v0, :cond_5

    iget p1, p0, Lb/g/b/i/d;->L:I

    if-ge v1, p1, :cond_5

    move v1, p1

    :cond_5
    iput v1, p0, Lb/g/b/i/d;->L:I

    iget p1, p0, Lb/g/b/i/d;->S:I

    if-ge v1, p1, :cond_6

    iput p1, p0, Lb/g/b/i/d;->L:I

    :cond_6
    if-eqz p2, :cond_8

    iget-object p1, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    if-ne p1, v0, :cond_7

    iget p1, p0, Lb/g/b/i/d;->M:I

    if-ge v2, p1, :cond_7

    move v2, p1

    :cond_7
    iput v2, p0, Lb/g/b/i/d;->M:I

    iget p1, p0, Lb/g/b/i/d;->T:I

    if-ge v2, p1, :cond_8

    iput p1, p0, Lb/g/b/i/d;->M:I

    :cond_8
    return-void
.end method

.method public D(Lb/g/b/d;)V
    .locals 6

    iget-object v0, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->o(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {p1, v1}, Lb/g/b/d;->o(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {p1, v2}, Lb/g/b/d;->o(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {p1, v3}, Lb/g/b/d;->o(Ljava/lang/Object;)I

    move-result p1

    iget-object v3, p0, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v4, v3, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v5, v4, Lb/g/b/i/l/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v5, v3, Lb/g/b/i/l/f;->j:Z

    if-eqz v5, :cond_0

    iget v0, v4, Lb/g/b/i/l/f;->g:I

    iget v2, v3, Lb/g/b/i/l/f;->g:I

    :cond_0
    iget-object v3, p0, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v4, v3, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v5, v4, Lb/g/b/i/l/f;->j:Z

    if-eqz v5, :cond_1

    iget-object v3, v3, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v5, v3, Lb/g/b/i/l/f;->j:Z

    if-eqz v5, :cond_1

    iget v1, v4, Lb/g/b/i/l/f;->g:I

    iget p1, v3, Lb/g/b/i/l/f;->g:I

    :cond_1
    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_2

    if-ltz v4, :cond_2

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_2

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-ne p1, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :cond_3
    sget-object v3, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    iput v0, p0, Lb/g/b/i/d;->P:I

    iput v1, p0, Lb/g/b/i/d;->Q:I

    iget v0, p0, Lb/g/b/i/d;->X:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iput v5, p0, Lb/g/b/i/d;->L:I

    iput v5, p0, Lb/g/b/i/d;->M:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v0, v0, v5

    if-ne v0, v3, :cond_5

    iget v0, p0, Lb/g/b/i/d;->L:I

    if-ge v2, v0, :cond_5

    move v2, v0

    :cond_5
    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lb/g/b/i/d;->M:I

    if-ge p1, v0, :cond_6

    move p1, v0

    :cond_6
    iput v2, p0, Lb/g/b/i/d;->L:I

    iput p1, p0, Lb/g/b/i/d;->M:I

    iget v0, p0, Lb/g/b/i/d;->T:I

    if-ge p1, v0, :cond_7

    iput v0, p0, Lb/g/b/i/d;->M:I

    :cond_7
    iget p1, p0, Lb/g/b/i/d;->L:I

    iget v0, p0, Lb/g/b/i/d;->S:I

    if-ge p1, v0, :cond_8

    iput v0, p0, Lb/g/b/i/d;->L:I

    :cond_8
    :goto_0
    return-void
.end method

.method public b(Lb/g/b/d;)V
    .locals 44

    move-object/from16 v13, p0

    move-object/from16 v9, p1

    sget-object v7, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    sget-object v0, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    iget-object v1, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v9, v1}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v6

    iget-object v1, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v9, v1}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v4

    iget-object v1, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v9, v1}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v3

    iget-object v1, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v1}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v1

    iget-object v2, v13, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {v9, v2}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v15

    iget-object v2, v13, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v5, v2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v8, v5, Lb/g/b/i/l/f;->j:Z

    const/16 v14, 0x8

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_4

    iget-object v2, v2, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v2, v2, Lb/g/b/i/l/f;->j:Z

    if-eqz v2, :cond_4

    iget-object v2, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v8, v2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v8, v8, Lb/g/b/i/l/f;->j:Z

    if-eqz v8, :cond_4

    iget-object v2, v2, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v2, v2, Lb/g/b/i/l/f;->j:Z

    if-eqz v2, :cond_4

    iget v0, v5, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v6, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v4, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v3, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v1, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/l;->k:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v15, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v0, v0, v11

    if-ne v0, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v2, v2, v12

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v13, Lb/g/b/i/d;->f:[Z

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iget-object v0, v0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    invoke-virtual {v9, v0, v4, v11, v14}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, v13, Lb/g/b/i/d;->f:[Z

    aget-boolean v0, v0, v12

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->t()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iget-object v0, v0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    invoke-virtual {v9, v0, v1, v11, v14}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v2, :cond_b

    if-eqz v2, :cond_5

    iget-object v2, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v2, v2, v11

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget-object v5, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v5, v5, v12

    if-ne v5, v7, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v13, v11}, Lb/g/b/i/d;->r(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    check-cast v8, Lb/g/b/i/e;

    invoke-virtual {v8, v13, v11}, Lb/g/b/i/e;->F(Lb/g/b/i/d;I)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->s()Z

    move-result v8

    :goto_4
    invoke-virtual {v13, v12}, Lb/g/b/i/d;->r(I)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    check-cast v10, Lb/g/b/i/e;

    invoke-virtual {v10, v13, v12}, Lb/g/b/i/e;->F(Lb/g/b/i/d;I)V

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->t()Z

    move-result v10

    :goto_5
    if-nez v8, :cond_9

    if-eqz v2, :cond_9

    iget v11, v13, Lb/g/b/i/d;->X:I

    if-eq v11, v14, :cond_9

    iget-object v11, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-nez v11, :cond_9

    iget-object v11, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-nez v11, :cond_9

    iget-object v11, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iget-object v11, v11, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v9, v11}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v4, v14, v12}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_9
    if-nez v10, :cond_a

    if-eqz v5, :cond_a

    iget v11, v13, Lb/g/b/i/d;->X:I

    const/16 v14, 0x8

    if-eq v11, v14, :cond_a

    iget-object v11, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-nez v11, :cond_a

    iget-object v11, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-nez v11, :cond_a

    iget-object v11, v13, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    if-nez v11, :cond_a

    iget-object v11, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iget-object v11, v11, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v11}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v9, v11, v1, v14, v12}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_a
    move/from16 v28, v2

    move/from16 v27, v5

    move/from16 v30, v8

    move/from16 v29, v10

    goto :goto_6

    :cond_b
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_6
    iget v2, v13, Lb/g/b/i/d;->L:I

    iget v5, v13, Lb/g/b/i/d;->S:I

    if-ge v2, v5, :cond_c

    move v2, v5

    :cond_c
    iget v5, v13, Lb/g/b/i/d;->M:I

    iget v8, v13, Lb/g/b/i/d;->T:I

    if-ge v5, v8, :cond_d

    move v5, v8

    :cond_d
    iget-object v8, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    if-eq v8, v0, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    :goto_7
    iget-object v10, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v10, v10, v12

    if-eq v10, v0, :cond_f

    const/4 v10, 0x1

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_8
    iget v11, v13, Lb/g/b/i/d;->O:I

    iput v11, v13, Lb/g/b/i/d;->s:I

    iget v11, v13, Lb/g/b/i/d;->N:F

    iput v11, v13, Lb/g/b/i/d;->t:F

    iget v14, v13, Lb/g/b/i/d;->j:I

    iget v12, v13, Lb/g/b/i/d;->k:I

    const/16 v19, 0x0

    const/16 v20, 0x4

    move/from16 v21, v2

    cmpl-float v11, v11, v19

    if-lez v11, :cond_22

    iget v11, v13, Lb/g/b/i/d;->X:I

    const/16 v2, 0x8

    if-eq v11, v2, :cond_22

    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v11, 0x0

    aget-object v2, v2, v11

    if-ne v2, v0, :cond_10

    if-nez v14, :cond_10

    const/4 v14, 0x3

    :cond_10
    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/16 v18, 0x1

    aget-object v2, v2, v18

    if-ne v2, v0, :cond_11

    if-nez v12, :cond_11

    const/4 v12, 0x3

    :cond_11
    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/16 v16, 0x0

    aget-object v11, v2, v16

    const/high16 v23, 0x3f800000    # 1.0f

    if-ne v11, v0, :cond_1c

    aget-object v2, v2, v18

    if-ne v2, v0, :cond_1c

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1c

    if-ne v12, v2, :cond_1c

    .line 1
    iget v0, v13, Lb/g/b/i/d;->s:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    if-eqz v8, :cond_12

    if-nez v10, :cond_12

    const/4 v0, 0x0

    iput v0, v13, Lb/g/b/i/d;->s:I

    goto :goto_9

    :cond_12
    if-nez v8, :cond_13

    if-eqz v10, :cond_13

    const/4 v0, 0x1

    iput v0, v13, Lb/g/b/i/d;->s:I

    iget v0, v13, Lb/g/b/i/d;->O:I

    if-ne v0, v2, :cond_13

    iget v0, v13, Lb/g/b/i/d;->t:F

    div-float v0, v23, v0

    iput v0, v13, Lb/g/b/i/d;->t:F

    :cond_13
    :goto_9
    iget v0, v13, Lb/g/b/i/d;->s:I

    if-nez v0, :cond_15

    iget-object v0, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const/4 v0, 0x1

    :goto_a
    iput v0, v13, Lb/g/b/i/d;->s:I

    goto :goto_b

    :cond_15
    const/4 v0, 0x1

    iget v2, v13, Lb/g/b/i/d;->s:I

    if-ne v2, v0, :cond_17

    iget-object v0, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-nez v0, :cond_17

    :cond_16
    const/4 v0, 0x0

    goto :goto_a

    :cond_17
    :goto_b
    iget v0, v13, Lb/g/b/i/d;->s:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    iget-object v0, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    iget-object v0, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_c
    iput v0, v13, Lb/g/b/i/d;->s:I

    goto :goto_d

    :cond_19
    iget-object v0, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, v13, Lb/g/b/i/d;->t:F

    div-float v0, v23, v0

    iput v0, v13, Lb/g/b/i/d;->t:F

    const/4 v0, 0x1

    goto :goto_c

    :cond_1a
    :goto_d
    iget v0, v13, Lb/g/b/i/d;->s:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_20

    iget v0, v13, Lb/g/b/i/d;->m:I

    if-lez v0, :cond_1b

    iget v0, v13, Lb/g/b/i/d;->p:I

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_e
    iput v0, v13, Lb/g/b/i/d;->s:I

    goto/16 :goto_f

    :cond_1b
    iget v0, v13, Lb/g/b/i/d;->m:I

    if-nez v0, :cond_20

    iget v0, v13, Lb/g/b/i/d;->p:I

    if-lez v0, :cond_20

    iget v0, v13, Lb/g/b/i/d;->t:F

    div-float v0, v23, v0

    iput v0, v13, Lb/g/b/i/d;->t:F

    const/4 v0, 0x1

    goto :goto_e

    .line 2
    :cond_1c
    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v8, 0x0

    aget-object v10, v2, v8

    if-ne v10, v0, :cond_1e

    const/4 v10, 0x3

    if-ne v14, v10, :cond_1e

    iput v8, v13, Lb/g/b/i/d;->s:I

    iget v8, v13, Lb/g/b/i/d;->t:F

    iget v10, v13, Lb/g/b/i/d;->M:I

    int-to-float v10, v10

    mul-float v8, v8, v10

    float-to-int v8, v8

    const/4 v10, 0x1

    aget-object v2, v2, v10

    move/from16 v31, v5

    if-eq v2, v0, :cond_1d

    move v2, v8

    move/from16 v33, v12

    const/16 v16, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x4

    goto :goto_11

    :cond_1d
    move v2, v8

    move/from16 v33, v12

    move/from16 v34, v14

    const/16 v16, 0x0

    goto :goto_10

    :cond_1e
    const/4 v10, 0x1

    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v2, v2, v10

    if-ne v2, v0, :cond_20

    const/4 v2, 0x3

    if-ne v12, v2, :cond_20

    iput v10, v13, Lb/g/b/i/d;->s:I

    iget v2, v13, Lb/g/b/i/d;->O:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1f

    iget v2, v13, Lb/g/b/i/d;->t:F

    div-float v2, v23, v2

    iput v2, v13, Lb/g/b/i/d;->t:F

    :cond_1f
    iget v2, v13, Lb/g/b/i/d;->t:F

    iget v5, v13, Lb/g/b/i/d;->L:I

    int-to-float v5, v5

    mul-float v2, v2, v5

    float-to-int v5, v2

    iget-object v2, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/16 v16, 0x0

    aget-object v2, v2, v16

    if-eq v2, v0, :cond_21

    move/from16 v31, v5

    move/from16 v34, v14

    move/from16 v2, v21

    const/16 v32, 0x0

    const/16 v33, 0x4

    goto :goto_11

    :cond_20
    :goto_f
    const/16 v16, 0x0

    :cond_21
    move/from16 v31, v5

    move/from16 v33, v12

    move/from16 v34, v14

    move/from16 v2, v21

    :goto_10
    const/16 v32, 0x1

    goto :goto_11

    :cond_22
    const/16 v16, 0x0

    move/from16 v31, v5

    move/from16 v33, v12

    move/from16 v34, v14

    move/from16 v2, v21

    const/16 v32, 0x0

    :goto_11
    iget-object v0, v13, Lb/g/b/i/d;->l:[I

    aput v34, v0, v16

    const/4 v5, 0x1

    aput v33, v0, v5

    if-eqz v32, :cond_24

    iget v0, v13, Lb/g/b/i/d;->s:I

    const/4 v5, -0x1

    if-eqz v0, :cond_23

    if-ne v0, v5, :cond_25

    :cond_23
    const/16 v19, 0x1

    goto :goto_12

    :cond_24
    const/4 v5, -0x1

    :cond_25
    const/16 v19, 0x0

    :goto_12
    iget-object v0, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v8, 0x0

    aget-object v0, v0, v8

    if-ne v0, v7, :cond_26

    instance-of v0, v13, Lb/g/b/i/e;

    if-eqz v0, :cond_26

    const/16 v20, 0x1

    goto :goto_13

    :cond_26
    const/16 v20, 0x0

    :goto_13
    if-eqz v20, :cond_27

    const/16 v21, 0x0

    goto :goto_14

    :cond_27
    move/from16 v21, v2

    :goto_14
    iget-object v0, v13, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    const/4 v12, 0x1

    xor-int/lit8 v35, v0, 0x1

    iget-object v0, v13, Lb/g/b/i/d;->I:[Z

    const/4 v2, 0x0

    aget-boolean v22, v0, v2

    aget-boolean v36, v0, v12

    iget v0, v13, Lb/g/b/i/d;->h:I

    const/4 v14, 0x2

    const/16 v37, 0x0

    if-eq v0, v14, :cond_2d

    iget-object v0, v13, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v2, v0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v8, v2, Lb/g/b/i/l/f;->j:Z

    if-eqz v8, :cond_2a

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v0, v0, Lb/g/b/i/l/f;->j:Z

    if-nez v0, :cond_28

    goto :goto_15

    :cond_28
    iget v0, v2, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v6, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    invoke-virtual {v9, v4, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_29

    if-eqz v28, :cond_29

    iget-object v0, v13, Lb/g/b/i/d;->f:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->s()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    iget-object v0, v0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    const/16 v11, 0x8

    invoke-virtual {v9, v0, v4, v2, v11}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_29
    move-object/from16 v39, v1

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v42, v6

    move-object/from16 v43, v7

    move-object/from16 v38, v15

    goto/16 :goto_19

    :cond_2a
    :goto_15
    const/16 v11, 0x8

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_16

    :cond_2b
    move-object/from16 v17, v37

    :goto_16
    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_2c

    iget-object v0, v0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_17

    :cond_2c
    move-object/from16 v18, v37

    :goto_17
    const/4 v2, 0x1

    const/4 v0, -0x1

    iget-object v5, v13, Lb/g/b/i/d;->f:[Z

    const/16 v16, 0x0

    aget-boolean v5, v5, v16

    iget-object v8, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v8, v8, v16

    iget-object v10, v13, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget-object v0, v13, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    const/4 v2, 0x0

    const/16 v16, 0x8

    move-object v11, v0

    iget v0, v13, Lb/g/b/i/d;->P:I

    move v12, v0

    iget v0, v13, Lb/g/b/i/d;->S:I

    move v14, v0

    iget-object v0, v13, Lb/g/b/i/d;->u:[I

    aget v0, v0, v2

    move-object/from16 v38, v15

    move v15, v0

    iget v0, v13, Lb/g/b/i/d;->U:F

    move/from16 v16, v0

    iget v0, v13, Lb/g/b/i/d;->m:I

    move/from16 v23, v0

    iget v0, v13, Lb/g/b/i/d;->n:I

    move/from16 v24, v0

    iget v0, v13, Lb/g/b/i/d;->o:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v39, v1

    move-object/from16 v1, p1

    move-object/from16 v40, v3

    move/from16 v3, v28

    move-object/from16 v41, v4

    move/from16 v4, v27

    move-object/from16 v42, v6

    move-object/from16 v6, v18

    move-object/from16 v43, v7

    move-object/from16 v7, v17

    move/from16 v9, v20

    move/from16 v13, v21

    move/from16 v17, v19

    move/from16 v18, v30

    move/from16 v19, v29

    move/from16 v20, v22

    move/from16 v21, v34

    move/from16 v22, v33

    move/from16 v26, v35

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v26}, Lb/g/b/i/d;->d(Lb/g/b/d;ZZZZLb/g/b/g;Lb/g/b/g;Lb/g/b/i/d$a;ZLb/g/b/i/c;Lb/g/b/i/c;IIIIFZZZZIIIIFZ)V

    goto :goto_18

    :cond_2d
    move-object/from16 v39, v1

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v42, v6

    move-object/from16 v43, v7

    move-object/from16 v38, v15

    :goto_18
    move-object/from16 v13, p0

    :goto_19
    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v1, v0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v2, v1, Lb/g/b/i/l/f;->j:Z

    if-eqz v2, :cond_30

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v0, v0, Lb/g/b/i/l/f;->j:Z

    if-eqz v0, :cond_30

    iget v0, v1, Lb/g/b/i/l/f;->g:I

    move-object/from16 v9, p1

    move-object/from16 v7, v40

    invoke-virtual {v9, v7, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    move-object/from16 v6, v39

    invoke-virtual {v9, v6, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/l;->k:Lb/g/b/i/l/f;

    iget v0, v0, Lb/g/b/i/l/f;->g:I

    move-object/from16 v1, v38

    invoke-virtual {v9, v1, v0}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_2f

    if-nez v29, :cond_2f

    if-eqz v27, :cond_2f

    iget-object v2, v13, Lb/g/b/i/d;->f:[Z

    const/4 v4, 0x1

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_2e

    iget-object v0, v0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v6, v3, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    goto :goto_1a

    :cond_2e
    const/16 v2, 0x8

    const/4 v3, 0x0

    goto :goto_1a

    :cond_2f
    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_1a
    const/4 v12, 0x0

    goto :goto_1b

    :cond_30
    move-object/from16 v9, p1

    move-object/from16 v1, v38

    move-object/from16 v6, v39

    move-object/from16 v7, v40

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v12, 0x1

    :goto_1b
    iget v0, v13, Lb/g/b/i/d;->i:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_31

    const/4 v11, 0x0

    goto :goto_1c

    :cond_31
    move v11, v12

    :goto_1c
    if-eqz v11, :cond_3c

    iget-object v0, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v0, v0, v4

    move-object/from16 v5, v43

    if-ne v0, v5, :cond_32

    instance-of v0, v13, Lb/g/b/i/e;

    if-eqz v0, :cond_32

    const/16 v17, 0x1

    goto :goto_1d

    :cond_32
    const/16 v17, 0x0

    :goto_1d
    if-eqz v17, :cond_33

    const/16 v31, 0x0

    :cond_33
    if-eqz v32, :cond_35

    iget v0, v13, Lb/g/b/i/d;->s:I

    if-eq v0, v4, :cond_34

    const/4 v5, -0x1

    if-ne v0, v5, :cond_35

    :cond_34
    const/16 v18, 0x1

    goto :goto_1e

    :cond_35
    const/16 v18, 0x0

    :goto_1e
    iget-object v0, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_36

    iget-object v0, v0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v0

    goto :goto_1f

    :cond_36
    move-object/from16 v0, v37

    :goto_1f
    iget-object v5, v13, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v5, :cond_37

    iget-object v5, v5, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v9, v5}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v5

    move-object/from16 v37, v5

    :cond_37
    iget v5, v13, Lb/g/b/i/d;->R:I

    if-gtz v5, :cond_38

    iget v5, v13, Lb/g/b/i/d;->X:I

    if-ne v5, v2, :cond_3b

    .line 3
    :cond_38
    iget v5, v13, Lb/g/b/i/d;->R:I

    .line 4
    invoke-virtual {v9, v1, v7, v5, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    iget-object v5, v13, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    iget-object v5, v5, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v5, :cond_3a

    invoke-virtual {v9, v5}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v5

    invoke-virtual {v9, v1, v5, v3, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    if-eqz v27, :cond_39

    iget-object v1, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v9, v1}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v9, v0, v1, v3, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_39
    const/16 v26, 0x0

    goto :goto_20

    :cond_3a
    iget v5, v13, Lb/g/b/i/d;->X:I

    if-ne v5, v2, :cond_3b

    invoke-virtual {v9, v1, v7, v3, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    :cond_3b
    move/from16 v26, v35

    :goto_20
    const/4 v2, 0x0

    iget-object v1, v13, Lb/g/b/i/d;->f:[Z

    aget-boolean v5, v1, v4

    iget-object v1, v13, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v8, v1, v4

    iget-object v10, v13, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget-object v11, v13, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget v12, v13, Lb/g/b/i/d;->Q:I

    iget v14, v13, Lb/g/b/i/d;->T:I

    iget-object v1, v13, Lb/g/b/i/d;->u:[I

    aget v15, v1, v4

    iget v1, v13, Lb/g/b/i/d;->V:F

    move/from16 v16, v1

    iget v1, v13, Lb/g/b/i/d;->p:I

    move/from16 v23, v1

    iget v1, v13, Lb/g/b/i/d;->q:I

    move/from16 v24, v1

    iget v1, v13, Lb/g/b/i/d;->r:F

    move/from16 v25, v1

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v27

    move/from16 v4, v28

    move-object/from16 v27, v6

    move-object/from16 v6, v37

    move-object/from16 v28, v7

    move-object/from16 v7, v19

    move/from16 v9, v17

    move/from16 v13, v31

    move/from16 v17, v18

    move/from16 v18, v29

    move/from16 v19, v30

    move/from16 v20, v36

    move/from16 v21, v33

    move/from16 v22, v34

    invoke-virtual/range {v0 .. v26}, Lb/g/b/i/d;->d(Lb/g/b/d;ZZZZLb/g/b/g;Lb/g/b/g;Lb/g/b/i/d$a;ZLb/g/b/i/c;Lb/g/b/i/c;IIIIFZZZZIIIIFZ)V

    goto :goto_21

    :cond_3c
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    :goto_21
    if-eqz v32, :cond_3e

    const/16 v6, 0x8

    move-object/from16 v7, p0

    iget v0, v7, Lb/g/b/i/d;->s:I

    const/4 v1, 0x1

    iget v5, v7, Lb/g/b/i/d;->t:F

    if-ne v0, v1, :cond_3d

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    goto :goto_22

    :cond_3d
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    :goto_22
    invoke-virtual/range {v0 .. v6}, Lb/g/b/d;->h(Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;FI)V

    goto :goto_23

    :cond_3e
    move-object/from16 v7, p0

    :goto_23
    iget-object v0, v7, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->d()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, v7, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    .line 5
    iget-object v0, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    .line 6
    iget-object v0, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    .line 7
    iget v1, v7, Lb/g/b/i/d;->v:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v2}, Lb/g/b/i/c;->b()I

    move-result v2

    .line 8
    sget-object v3, Lb/g/b/i/c$a;->f:Lb/g/b/i/c$a;

    sget-object v4, Lb/g/b/i/c$a;->e:Lb/g/b/i/c$a;

    sget-object v5, Lb/g/b/i/c$a;->d:Lb/g/b/i/c$a;

    sget-object v6, Lb/g/b/i/c$a;->c:Lb/g/b/i/c$a;

    invoke-virtual {v7, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    invoke-virtual {v7, v5}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v9, v8}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v13

    invoke-virtual {v7, v4}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v9, v8}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v8

    invoke-virtual {v7, v3}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v10

    invoke-virtual {v9, v10}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v14

    invoke-virtual {v0, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v6

    invoke-virtual {v9, v6}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v6

    invoke-virtual {v0, v5}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v5

    invoke-virtual {v9, v5}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v15

    invoke-virtual {v0, v4}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v4

    invoke-virtual {v9, v4}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v4

    invoke-virtual {v0, v3}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lb/g/b/d;->m()Lb/g/b/b;

    move-result-object v0

    move-object v5, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    move-object/from16 v20, v5

    move-object/from16 v19, v6

    mul-double v5, v17, v1

    double-to-float v5, v5

    move-object v12, v0

    move/from16 v17, v5

    invoke-virtual/range {v12 .. v17}, Lb/g/b/b;->g(Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;F)Lb/g/b/b;

    invoke-virtual {v9, v0}, Lb/g/b/d;->c(Lb/g/b/b;)V

    invoke-virtual/range {p1 .. p1}, Lb/g/b/d;->m()Lb/g/b/b;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-float v15, v3

    move-object v10, v0

    move-object v12, v8

    move-object/from16 v13, v19

    move-object/from16 v14, v20

    invoke-virtual/range {v10 .. v15}, Lb/g/b/b;->g(Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;F)Lb/g/b/b;

    invoke-virtual {v9, v0}, Lb/g/b/d;->c(Lb/g/b/b;)V

    :cond_3f
    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lb/g/b/i/d;->X:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Lb/g/b/d;ZZZZLb/g/b/g;Lb/g/b/g;Lb/g/b/i/d$a;ZLb/g/b/i/c;Lb/g/b/i/c;IIIIFZZZZIIIIFZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p22

    move/from16 v3, p23

    move/from16 v4, p24

    sget-object v5, Lb/g/b/i/c$a;->f:Lb/g/b/i/c$a;

    sget-object v6, Lb/g/b/i/c$a;->d:Lb/g/b/i/c$a;

    invoke-virtual {v10, v13}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v9

    invoke-virtual {v10, v14}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v8

    .line 1
    iget-object v7, v13, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    .line 2
    invoke-virtual {v10, v7}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v7

    .line 3
    iget-object v12, v14, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    .line 4
    invoke-virtual {v10, v12}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v12

    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->d()Z

    move-result v22

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->d()Z

    move-result v23

    iget-object v2, v0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v2}, Lb/g/b/i/c;->d()Z

    move-result v2

    if-eqz v23, :cond_0

    add-int/lit8 v16, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v22

    :goto_0
    if-eqz v2, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    move/from16 v14, v16

    if-eqz p17, :cond_2

    move-object/from16 v25, v12

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    move/from16 v11, p21

    move-object/from16 v25, v12

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    move-object/from16 v16, v5

    const/4 v5, 0x1

    if-eqz v12, :cond_5

    if-eq v12, v5, :cond_5

    const/4 v5, 0x2

    if-eq v12, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    if-ne v11, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    :goto_2
    const/4 v5, 0x4

    :goto_3
    const/4 v12, 0x0

    :goto_4
    iget v5, v0, Lb/g/b/i/d;->X:I

    move/from16 v17, v12

    const/16 v12, 0x8

    if-ne v5, v12, :cond_6

    const/4 v5, 0x0

    const/16 v17, 0x0

    goto :goto_5

    :cond_6
    move/from16 v5, p13

    :goto_5
    if-eqz p26, :cond_8

    if-nez v22, :cond_7

    if-nez v23, :cond_7

    if-nez v2, :cond_7

    move/from16 v12, p12

    invoke-virtual {v10, v9, v12}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    goto :goto_6

    :cond_7
    if-eqz v22, :cond_8

    if-nez v23, :cond_8

    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->b()I

    move-result v12

    move/from16 v28, v2

    const/16 v2, 0x8

    invoke-virtual {v10, v9, v7, v12, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    goto :goto_7

    :cond_8
    :goto_6
    move/from16 v28, v2

    const/16 v2, 0x8

    :goto_7
    if-nez v17, :cond_c

    const/4 v6, 0x3

    if-eqz p9, :cond_a

    const/4 v12, 0x0

    invoke-virtual {v10, v8, v9, v12, v6}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    if-lez v15, :cond_9

    invoke-virtual {v10, v8, v9, v15, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_9
    const v5, 0x7fffffff

    if-ge v1, v5, :cond_b

    invoke-virtual {v10, v8, v9, v1, v2}, Lb/g/b/d;->g(Lb/g/b/g;Lb/g/b/g;II)V

    goto :goto_8

    :cond_a
    invoke-virtual {v10, v8, v9, v5, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    :cond_b
    :goto_8
    const/4 v1, 0x3

    goto :goto_c

    :cond_c
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v14, v2, :cond_f

    if-nez p17, :cond_f

    const/4 v2, 0x1

    if-eq v11, v2, :cond_d

    if-nez v11, :cond_f

    :cond_d
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v4, :cond_e

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_e
    const/16 v5, 0x8

    invoke-virtual {v10, v8, v9, v2, v5}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    goto/16 :goto_f

    :cond_f
    const/4 v2, -0x2

    if-ne v3, v2, :cond_10

    move v3, v5

    :cond_10
    if-ne v4, v2, :cond_11

    move v4, v5

    :cond_11
    if-lez v5, :cond_12

    const/4 v2, 0x1

    if-eq v11, v2, :cond_12

    const/4 v5, 0x0

    :cond_12
    if-lez v3, :cond_13

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v9, v3, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_13
    if-lez v4, :cond_16

    if-eqz p3, :cond_14

    const/4 v2, 0x1

    if-ne v11, v2, :cond_14

    const/4 v2, 0x0

    goto :goto_9

    :cond_14
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_15

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v9, v4, v2}, Lb/g/b/d;->g(Lb/g/b/g;Lb/g/b/g;II)V

    goto :goto_a

    :cond_15
    const/16 v2, 0x8

    :goto_a
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_b

    :cond_16
    const/16 v2, 0x8

    :goto_b
    const/4 v12, 0x1

    if-ne v11, v12, :cond_18

    if-eqz p3, :cond_17

    invoke-virtual {v10, v8, v9, v5, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    goto :goto_c

    :cond_17
    const/4 v6, 0x5

    invoke-virtual {v10, v8, v9, v5, v6}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    invoke-virtual {v10, v8, v9, v5, v2}, Lb/g/b/d;->g(Lb/g/b/g;Lb/g/b/g;II)V

    :goto_c
    move/from16 v12, p5

    move/from16 v16, v3

    goto :goto_10

    :cond_18
    const/4 v2, 0x2

    if-ne v11, v2, :cond_1b

    .line 5
    iget-object v2, v13, Lb/g/b/i/c;->c:Lb/g/b/i/c$a;

    move-object/from16 v5, v16

    if-eq v2, v6, :cond_1a

    if-ne v2, v5, :cond_19

    goto :goto_d

    .line 6
    :cond_19
    iget-object v2, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    sget-object v5, Lb/g/b/i/c$a;->c:Lb/g/b/i/c$a;

    invoke-virtual {v2, v5}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v2

    iget-object v5, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    sget-object v6, Lb/g/b/i/c$a;->e:Lb/g/b/i/c$a;

    invoke-virtual {v5, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v5

    goto :goto_e

    :cond_1a
    :goto_d
    iget-object v2, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    invoke-virtual {v2, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v2

    iget-object v6, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    invoke-virtual {v6, v5}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v5

    :goto_e
    invoke-virtual {v10, v5}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v5

    move-object/from16 v20, v2

    move-object/from16 v19, v5

    invoke-virtual/range {p1 .. p1}, Lb/g/b/d;->m()Lb/g/b/b;

    move-result-object v2

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v21, p25

    invoke-virtual/range {v16 .. v21}, Lb/g/b/b;->d(Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;Lb/g/b/g;F)Lb/g/b/b;

    invoke-virtual {v10, v2}, Lb/g/b/d;->c(Lb/g/b/b;)V

    :goto_f
    move/from16 v12, p5

    move/from16 v16, v3

    const/16 v17, 0x0

    goto :goto_10

    :cond_1b
    move/from16 v16, v3

    const/4 v12, 0x1

    :goto_10
    if-eqz p26, :cond_4d

    if-eqz p18, :cond_1c

    move-object/from16 v4, p6

    move-object/from16 v1, p7

    move-object v3, v8

    move/from16 p5, v12

    move v5, v14

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/16 v26, 0x1

    move-object v12, v9

    goto/16 :goto_2f

    :cond_1c
    if-nez v22, :cond_1d

    if-nez v23, :cond_1d

    if-nez v28, :cond_1d

    goto :goto_11

    :cond_1d
    if-eqz v22, :cond_1f

    if-nez v23, :cond_1f

    :goto_11
    move-object v3, v8

    move/from16 p5, v12

    move-object/from16 v14, v25

    :cond_1e
    :goto_12
    const/4 v2, 0x0

    goto/16 :goto_2d

    :cond_1f
    if-nez v22, :cond_20

    if-eqz v23, :cond_20

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->b()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v14, v25

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v14, v1, v2}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    if-eqz p3, :cond_4a

    move-object/from16 v6, p6

    const/4 v1, 0x5

    const/4 v5, 0x0

    invoke-virtual {v10, v9, v6, v5, v1}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    goto/16 :goto_2c

    :cond_20
    move-object/from16 v6, p6

    move-object/from16 v14, v25

    const/4 v3, 0x3

    const/4 v5, 0x0

    if-eqz v22, :cond_4a

    if-eqz v23, :cond_4a

    iget-object v1, v13, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    iget-object v2, v1, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    move-object/from16 v1, p11

    iget-object v5, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    iget-object v5, v5, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    .line 7
    iget-object v3, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    const/16 v18, 0x6

    if-eqz v17, :cond_32

    if-nez v11, :cond_24

    if-nez v4, :cond_21

    if-nez v16, :cond_21

    const/4 v4, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x8

    const/16 v21, 0x8

    goto :goto_13

    :cond_21
    const/4 v4, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x5

    const/16 v21, 0x5

    .line 8
    :goto_13
    instance-of v1, v2, Lb/g/b/i/a;

    if-nez v1, :cond_23

    instance-of v1, v5, Lb/g/b/i/a;

    if-eqz v1, :cond_22

    goto :goto_14

    :cond_22
    const/4 v1, 0x6

    const/4 v6, 0x1

    const/16 v27, 0x0

    goto/16 :goto_20

    :cond_23
    :goto_14
    move/from16 v1, v20

    const/4 v6, 0x1

    const/16 v27, 0x0

    goto/16 :goto_1f

    :cond_24
    const/4 v1, 0x1

    if-ne v11, v1, :cond_25

    const/16 v1, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/16 v19, 0x0

    :goto_15
    const/16 v27, 0x1

    goto/16 :goto_1f

    :cond_25
    const/4 v1, 0x3

    if-ne v11, v1, :cond_31

    iget v1, v0, Lb/g/b/i/d;->s:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_28

    if-eqz p19, :cond_27

    if-eqz p3, :cond_26

    const/4 v1, 0x5

    goto :goto_16

    :cond_26
    const/4 v1, 0x4

    goto :goto_16

    :cond_27
    const/16 v1, 0x8

    :goto_16
    const/16 v4, 0x8

    const/4 v6, 0x1

    goto :goto_1a

    :cond_28
    if-eqz p17, :cond_2c

    move/from16 v1, p22

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2a

    const/4 v6, 0x1

    if-ne v1, v6, :cond_29

    goto :goto_17

    :cond_29
    const/4 v1, 0x0

    goto :goto_18

    :cond_2a
    const/4 v6, 0x1

    :goto_17
    const/4 v1, 0x1

    :goto_18
    if-nez v1, :cond_2b

    const/16 v1, 0x8

    const/4 v4, 0x5

    goto :goto_19

    :cond_2b
    const/4 v1, 0x5

    const/4 v4, 0x4

    :goto_19
    move/from16 v20, v1

    move/from16 v21, v4

    const/4 v1, 0x6

    const/4 v4, 0x1

    const/16 v19, 0x1

    goto :goto_1b

    :cond_2c
    const/4 v6, 0x1

    if-lez v4, :cond_2d

    const/4 v1, 0x6

    const/4 v4, 0x5

    :goto_1a
    move/from16 v20, v4

    const/4 v4, 0x1

    const/16 v19, 0x1

    const/16 v21, 0x5

    :goto_1b
    const/16 v27, 0x1

    goto :goto_20

    :cond_2d
    if-nez v4, :cond_30

    if-nez v16, :cond_30

    if-nez p19, :cond_2e

    const/4 v1, 0x6

    const/4 v4, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x5

    const/16 v21, 0x8

    goto :goto_1b

    :cond_2e
    if-eq v2, v3, :cond_2f

    if-eq v5, v3, :cond_2f

    const/4 v1, 0x4

    goto :goto_1c

    :cond_2f
    const/4 v1, 0x5

    :goto_1c
    const/4 v4, 0x1

    const/16 v19, 0x1

    goto :goto_15

    :cond_30
    const/4 v1, 0x1

    const/4 v4, 0x1

    const/16 v19, 0x1

    goto :goto_1e

    :cond_31
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_1d

    :cond_32
    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v4, 0x1

    :goto_1d
    const/16 v19, 0x0

    :goto_1e
    move/from16 v27, v1

    const/4 v1, 0x5

    :goto_1f
    move/from16 v20, v1

    const/4 v1, 0x6

    const/16 v21, 0x4

    :goto_20
    if-eqz v27, :cond_33

    if-ne v7, v14, :cond_33

    if-eq v2, v3, :cond_33

    const/16 v22, 0x0

    const/16 v27, 0x0

    goto :goto_21

    :cond_33
    const/16 v22, 0x1

    :goto_21
    if-eqz v4, :cond_35

    iget v4, v0, Lb/g/b/i/d;->X:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_34

    const/16 v25, 0x4

    goto :goto_22

    :cond_34
    move/from16 v25, v1

    :goto_22
    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->b()I

    move-result v4

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->b()I

    move-result v28

    move-object/from16 v6, p11

    const/16 v24, 0x3

    move-object/from16 v1, p1

    move-object v13, v2

    move-object v2, v9

    move/from16 v24, v11

    move/from16 p5, v12

    const/4 v11, 0x3

    move-object v12, v3

    move-object v3, v7

    move-object v11, v5

    const/16 v23, 0x4

    const/16 v26, 0x1

    move/from16 v5, p16

    move-object/from16 v15, p6

    move-object v6, v14

    move-object v15, v7

    move-object v7, v8

    move-object/from16 p8, v12

    move-object v12, v8

    move/from16 v8, v28

    move-object/from16 v28, v12

    move-object v12, v9

    move/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Lb/g/b/d;->b(Lb/g/b/g;Lb/g/b/g;IFLb/g/b/g;Lb/g/b/g;II)V

    goto :goto_23

    :cond_35
    move-object v13, v2

    move-object/from16 p8, v3

    move-object v15, v7

    move-object/from16 v28, v8

    move/from16 v24, v11

    move/from16 p5, v12

    const/16 v23, 0x4

    const/16 v26, 0x1

    move-object v11, v5

    move-object v12, v9

    :goto_23
    iget v1, v0, Lb/g/b/i/d;->X:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_36

    return-void

    :cond_36
    if-eqz v27, :cond_39

    if-eqz p3, :cond_38

    if-eq v15, v14, :cond_38

    if-nez v17, :cond_38

    instance-of v1, v13, Lb/g/b/i/a;

    if-nez v1, :cond_37

    instance-of v1, v11, Lb/g/b/i/a;

    if-eqz v1, :cond_38

    :cond_37
    const/4 v1, 0x6

    goto :goto_24

    :cond_38
    move/from16 v1, v20

    :goto_24
    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->b()I

    move-result v2

    invoke-virtual {v10, v12, v15, v2, v1}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->b()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v3, v28

    invoke-virtual {v10, v3, v14, v2, v1}, Lb/g/b/d;->g(Lb/g/b/g;Lb/g/b/g;II)V

    move/from16 v20, v1

    goto :goto_25

    :cond_39
    move-object/from16 v3, v28

    :goto_25
    if-eqz p3, :cond_3a

    if-eqz p20, :cond_3a

    instance-of v1, v13, Lb/g/b/i/a;

    if-nez v1, :cond_3a

    instance-of v1, v11, Lb/g/b/i/a;

    if-nez v1, :cond_3a

    const/4 v1, 0x6

    const/4 v2, 0x6

    const/4 v5, 0x1

    goto :goto_26

    :cond_3a
    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v5, v22

    :goto_26
    if-eqz v5, :cond_46

    if-eqz v19, :cond_43

    if-eqz p19, :cond_3b

    if-eqz p4, :cond_43

    :cond_3b
    move-object/from16 v4, p8

    if-eq v13, v4, :cond_3d

    if-ne v11, v4, :cond_3c

    goto :goto_27

    :cond_3c
    move/from16 v18, v2

    :cond_3d
    :goto_27
    instance-of v5, v13, Lb/g/b/i/f;

    if-nez v5, :cond_3e

    instance-of v5, v11, Lb/g/b/i/f;

    if-eqz v5, :cond_3f

    :cond_3e
    const/16 v18, 0x5

    :cond_3f
    instance-of v5, v13, Lb/g/b/i/a;

    if-nez v5, :cond_40

    instance-of v5, v11, Lb/g/b/i/a;

    if-eqz v5, :cond_41

    :cond_40
    const/16 v18, 0x5

    :cond_41
    if-eqz p19, :cond_42

    const/4 v5, 0x5

    goto :goto_28

    :cond_42
    move/from16 v5, v18

    :goto_28
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_29

    :cond_43
    move-object/from16 v4, p8

    :goto_29
    move v5, v2

    if-eqz p3, :cond_45

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz p17, :cond_45

    if-nez p19, :cond_45

    if-eq v13, v4, :cond_44

    if-ne v11, v4, :cond_45

    :cond_44
    const/4 v5, 0x4

    :cond_45
    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->b()I

    move-result v1

    invoke-virtual {v10, v12, v15, v1, v5}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->b()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v3, v14, v1, v5}, Lb/g/b/d;->d(Lb/g/b/g;Lb/g/b/g;II)Lb/g/b/b;

    :cond_46
    if-eqz p3, :cond_48

    move-object/from16 v1, p6

    move-object v2, v15

    if-ne v1, v2, :cond_47

    invoke-virtual/range {p10 .. p10}, Lb/g/b/i/c;->b()I

    move-result v5

    goto :goto_2a

    :cond_47
    const/4 v5, 0x0

    :goto_2a
    if-eq v2, v1, :cond_48

    const/4 v2, 0x5

    invoke-virtual {v10, v12, v1, v5, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_48
    if-eqz p3, :cond_1e

    if-eqz v17, :cond_1e

    if-nez p14, :cond_1e

    if-nez v16, :cond_1e

    if-eqz v17, :cond_49

    move/from16 v11, v24

    const/4 v1, 0x3

    if-ne v11, v1, :cond_49

    const/16 v1, 0x8

    goto :goto_2b

    :cond_49
    const/4 v1, 0x5

    :goto_2b
    const/4 v2, 0x0

    invoke-virtual {v10, v3, v12, v2, v1}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    goto :goto_2d

    :cond_4a
    :goto_2c
    move-object v3, v8

    move/from16 p5, v12

    goto/16 :goto_12

    :goto_2d
    if-eqz p3, :cond_4c

    if-eqz p5, :cond_4c

    move-object/from16 v1, p11

    iget-object v4, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v4, :cond_4b

    invoke-virtual/range {p11 .. p11}, Lb/g/b/i/c;->b()I

    move-result v5

    move-object/from16 v1, p7

    goto :goto_2e

    :cond_4b
    move-object/from16 v1, p7

    const/4 v5, 0x0

    :goto_2e
    if-eq v14, v1, :cond_4c

    const/4 v2, 0x5

    invoke-virtual {v10, v1, v3, v5, v2}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_4c
    return-void

    :cond_4d
    move-object/from16 v4, p6

    move-object/from16 v1, p7

    move-object v3, v8

    move/from16 p5, v12

    move v5, v14

    const/4 v2, 0x0

    const/16 v26, 0x1

    move-object v12, v9

    const/4 v6, 0x2

    :goto_2f
    if-ge v5, v6, :cond_52

    if-eqz p3, :cond_52

    if-eqz p5, :cond_52

    const/16 v5, 0x8

    invoke-virtual {v10, v12, v4, v2, v5}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    if-nez p2, :cond_4f

    iget-object v4, v0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    iget-object v4, v4, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-nez v4, :cond_4e

    goto :goto_30

    :cond_4e
    const/4 v5, 0x0

    goto :goto_31

    :cond_4f
    :goto_30
    const/4 v5, 0x1

    :goto_31
    if-nez p2, :cond_51

    iget-object v4, v0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    iget-object v4, v4, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v4, :cond_51

    iget-object v4, v4, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    iget v5, v4, Lb/g/b/i/d;->N:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_50

    iget-object v4, v4, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v5, v4, v2

    sget-object v6, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    if-ne v5, v6, :cond_50

    aget-object v4, v4, v26

    if-ne v4, v6, :cond_50

    const/4 v5, 0x1

    goto :goto_32

    :cond_50
    const/4 v5, 0x0

    :cond_51
    :goto_32
    if-eqz v5, :cond_52

    const/16 v4, 0x8

    invoke-virtual {v10, v1, v3, v2, v4}, Lb/g/b/d;->f(Lb/g/b/g;Lb/g/b/g;II)V

    :cond_52
    return-void
.end method

.method public e(Lb/g/b/d;)V
    .locals 1

    iget-object v0, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    iget-object v0, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    iget-object v0, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    iget-object v0, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    iget v0, p0, Lb/g/b/i/d;->R:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {p1, v0}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    :cond_0
    return-void
.end method

.method public f(Lb/g/b/i/c$a;)Lb/g/b/i/c;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lb/g/b/i/d;->E:Lb/g/b/i/c;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lb/g/b/i/d;->D:Lb/g/b/i/c;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public g()I
    .locals 2

    invoke-virtual {p0}, Lb/g/b/i/d;->q()I

    move-result v0

    iget v1, p0, Lb/g/b/i/d;->M:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h(I)Lb/g/b/i/d$a;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i()I
    .locals 2

    iget v0, p0, Lb/g/b/i/d;->X:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lb/g/b/i/d;->M:I

    return v0
.end method

.method public j()Lb/g/b/i/d$a;
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public k(I)Lb/g/b/i/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    iget-object v0, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget-object v0, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)Lb/g/b/i/d;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget-object v0, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget-object v0, p1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lb/g/b/i/c;->b:Lb/g/b/i/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public m()I
    .locals 2

    invoke-virtual {p0}, Lb/g/b/i/d;->p()I

    move-result v0

    iget v1, p0, Lb/g/b/i/d;->L:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n()Lb/g/b/i/d$a;
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public o()I
    .locals 2

    iget v0, p0, Lb/g/b/i/d;->X:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lb/g/b/i/d;->L:I

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/g/b/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/g/b/i/e;

    iget v0, v0, Lb/g/b/i/e;->l0:I

    iget v1, p0, Lb/g/b/i/d;->P:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb/g/b/i/d;->P:I

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lb/g/b/i/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/g/b/i/e;

    iget v0, v0, Lb/g/b/i/e;->m0:I

    iget v1, p0, Lb/g/b/i/d;->Q:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lb/g/b/i/d;->Q:I

    return v0
.end method

.method public final r(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lb/g/b/i/d;->G:[Lb/g/b/i/c;

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget-object v1, v0, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lb/g/b/i/c;->d:Lb/g/b/i/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/g/b/i/d;->Z:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    const-string v1, "type: "

    invoke-static {v1}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lb/g/b/i/d;->Z:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/g/b/i/d;->Y:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "id: "

    invoke-static {v1}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lb/g/b/i/d;->Y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/b/i/d;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/b/i/d;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/b/i/d;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/b/i/d;->M:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 6

    iget-object v0, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->D:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->E:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    iget-object v0, p0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {v0}, Lb/g/b/i/c;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    const/4 v1, 0x0

    iput v1, p0, Lb/g/b/i/d;->v:F

    const/4 v2, 0x0

    iput v2, p0, Lb/g/b/i/d;->L:I

    iput v2, p0, Lb/g/b/i/d;->M:I

    iput v1, p0, Lb/g/b/i/d;->N:F

    const/4 v1, -0x1

    iput v1, p0, Lb/g/b/i/d;->O:I

    iput v2, p0, Lb/g/b/i/d;->P:I

    iput v2, p0, Lb/g/b/i/d;->Q:I

    iput v2, p0, Lb/g/b/i/d;->R:I

    iput v2, p0, Lb/g/b/i/d;->S:I

    iput v2, p0, Lb/g/b/i/d;->T:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lb/g/b/i/d;->U:F

    iput v3, p0, Lb/g/b/i/d;->V:F

    iget-object v3, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    sget-object v4, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iput-object v0, p0, Lb/g/b/i/d;->W:Ljava/lang/Object;

    iput v2, p0, Lb/g/b/i/d;->X:I

    iput-object v0, p0, Lb/g/b/i/d;->Z:Ljava/lang/String;

    iput v2, p0, Lb/g/b/i/d;->a0:I

    iput v2, p0, Lb/g/b/i/d;->b0:I

    iget-object v0, p0, Lb/g/b/i/d;->c0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    aput v3, v0, v5

    iput v1, p0, Lb/g/b/i/d;->h:I

    iput v1, p0, Lb/g/b/i/d;->i:I

    iget-object v0, p0, Lb/g/b/i/d;->u:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    aput v3, v0, v5

    iput v2, p0, Lb/g/b/i/d;->j:I

    iput v2, p0, Lb/g/b/i/d;->k:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/g/b/i/d;->o:F

    iput v0, p0, Lb/g/b/i/d;->r:F

    iput v3, p0, Lb/g/b/i/d;->n:I

    iput v3, p0, Lb/g/b/i/d;->q:I

    iput v2, p0, Lb/g/b/i/d;->m:I

    iput v2, p0, Lb/g/b/i/d;->p:I

    iput v1, p0, Lb/g/b/i/d;->s:I

    iput v0, p0, Lb/g/b/i/d;->t:F

    iget-object v0, p0, Lb/g/b/i/d;->f:[Z

    aput-boolean v5, v0, v2

    aput-boolean v5, v0, v5

    iget-object v0, p0, Lb/g/b/i/d;->I:[Z

    aput-boolean v2, v0, v2

    aput-boolean v2, v0, v5

    return-void
.end method

.method public v(Lb/g/b/c;)V
    .locals 0

    iget-object p1, p0, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->F:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->D:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    iget-object p1, p0, Lb/g/b/i/d;->E:Lb/g/b/i/c;

    invoke-virtual {p1}, Lb/g/b/i/c;->f()V

    return-void
.end method

.method public w(I)V
    .locals 1

    iput p1, p0, Lb/g/b/i/d;->M:I

    iget v0, p0, Lb/g/b/i/d;->T:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lb/g/b/i/d;->M:I

    :cond_0
    return-void
.end method

.method public x(Lb/g/b/i/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public y(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lb/g/b/i/d;->T:I

    return-void
.end method

.method public z(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lb/g/b/i/d;->S:I

    return-void
.end method
