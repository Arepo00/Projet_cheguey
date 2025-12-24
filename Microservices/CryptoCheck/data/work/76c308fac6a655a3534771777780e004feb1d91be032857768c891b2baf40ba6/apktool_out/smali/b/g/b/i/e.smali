.class public Lb/g/b/i/e;
.super Lb/g/b/i/k;
.source ""


# instance fields
.field public g0:Lb/g/b/i/l/b;

.field public h0:Lb/g/b/i/l/e;

.field public i0:Lb/g/b/i/l/b$b;

.field public j0:Z

.field public k0:Lb/g/b/d;

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:[Lb/g/b/i/b;

.field public q0:[Lb/g/b/i/b;

.field public r0:I

.field public s0:Z

.field public t0:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/g/b/i/k;-><init>()V

    new-instance v0, Lb/g/b/i/l/b;

    invoke-direct {v0, p0}, Lb/g/b/i/l/b;-><init>(Lb/g/b/i/e;)V

    iput-object v0, p0, Lb/g/b/i/e;->g0:Lb/g/b/i/l/b;

    new-instance v0, Lb/g/b/i/l/e;

    invoke-direct {v0, p0}, Lb/g/b/i/l/e;-><init>(Lb/g/b/i/e;)V

    iput-object v0, p0, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/b/i/e;->i0:Lb/g/b/i/l/b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/b/i/e;->j0:Z

    new-instance v1, Lb/g/b/d;

    invoke-direct {v1}, Lb/g/b/d;-><init>()V

    iput-object v1, p0, Lb/g/b/i/e;->k0:Lb/g/b/d;

    iput v0, p0, Lb/g/b/i/e;->n0:I

    iput v0, p0, Lb/g/b/i/e;->o0:I

    const/4 v1, 0x4

    new-array v2, v1, [Lb/g/b/i/b;

    iput-object v2, p0, Lb/g/b/i/e;->p0:[Lb/g/b/i/b;

    new-array v1, v1, [Lb/g/b/i/b;

    iput-object v1, p0, Lb/g/b/i/e;->q0:[Lb/g/b/i/b;

    const/16 v1, 0x107

    iput v1, p0, Lb/g/b/i/e;->r0:I

    iput-boolean v0, p0, Lb/g/b/i/e;->s0:Z

    iput-boolean v0, p0, Lb/g/b/i/e;->t0:Z

    return-void
.end method


# virtual methods
.method public C(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lb/g/b/i/d;->C(ZZ)V

    iget-object v0, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/b/i/d;

    invoke-virtual {v2, p1, p2}, Lb/g/b/i/d;->C(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E()V
    .locals 18

    move-object/from16 v1, p0

    sget-object v2, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v3, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    const/4 v4, 0x0

    iput v4, v1, Lb/g/b/i/d;->P:I

    iput v4, v1, Lb/g/b/i/d;->Q:I

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->o()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->i()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput-boolean v4, v1, Lb/g/b/i/e;->s0:Z

    iput-boolean v4, v1, Lb/g/b/i/e;->t0:Z

    .line 1
    iget v0, v1, Lb/g/b/i/e;->r0:I

    const/16 v7, 0x40

    and-int/2addr v0, v7

    const/4 v8, 0x1

    if-ne v0, v7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    const/16 v0, 0x80

    iget v7, v1, Lb/g/b/i/e;->r0:I

    and-int/2addr v7, v0

    if-ne v7, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 2
    :goto_3
    iget-object v7, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    iput-boolean v4, v7, Lb/g/b/d;->g:Z

    iput-boolean v4, v7, Lb/g/b/d;->h:Z

    iget v9, v1, Lb/g/b/i/e;->r0:I

    if-eqz v9, :cond_4

    if-eqz v0, :cond_4

    iput-boolean v8, v7, Lb/g/b/d;->h:Z

    :cond_4
    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v7, v0, v8

    aget-object v9, v0, v4

    iget-object v10, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v0

    if-eq v0, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 3
    :goto_5
    iput v4, v1, Lb/g/b/i/e;->n0:I

    iput v4, v1, Lb/g/b/i/e;->o0:I

    .line 4
    iget-object v0, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v12, :cond_8

    iget-object v13, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/g/b/i/d;

    instance-of v14, v13, Lb/g/b/i/k;

    if-eqz v14, :cond_7

    check-cast v13, Lb/g/b/i/k;

    invoke-virtual {v13}, Lb/g/b/i/k;->E()V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    :goto_7
    if-eqz v13, :cond_19

    add-int/lit8 v15, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v0}, Lb/g/b/d;->t()V

    .line 5
    iput v4, v1, Lb/g/b/i/e;->n0:I

    iput v4, v1, Lb/g/b/i/e;->o0:I

    .line 6
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v1, v0}, Lb/g/b/i/d;->e(Lb/g/b/d;)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v12, :cond_9

    iget-object v8, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/b/i/d;

    iget-object v4, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v8, v4}, Lb/g/b/i/d;->e(Lb/g/b/d;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_8

    :cond_9
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v1, v0}, Lb/g/b/i/e;->G(Lb/g/b/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    .line 7
    iget-boolean v4, v0, Lb/g/b/d;->g:Z

    if-nez v4, :cond_a

    iget-boolean v4, v0, Lb/g/b/d;->h:Z

    if-eqz v4, :cond_d

    :cond_a
    const/4 v4, 0x0

    :goto_9
    iget v8, v0, Lb/g/b/d;->k:I

    if-ge v4, v8, :cond_c

    iget-object v8, v0, Lb/g/b/d;->f:[Lb/g/b/b;

    aget-object v8, v8, v4

    iget-boolean v8, v8, Lb/g/b/b;->f:Z

    if-nez v8, :cond_b

    const/4 v4, 0x0

    goto :goto_a

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x1

    :goto_a
    if-nez v4, :cond_e

    :cond_d
    iget-object v4, v0, Lb/g/b/d;->c:Lb/g/b/d$a;

    invoke-virtual {v0, v4}, Lb/g/b/d;->q(Lb/g/b/d$a;)V

    goto :goto_b

    :cond_e
    invoke-virtual {v0}, Lb/g/b/d;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_b
    const/16 v16, 0x1

    goto :goto_d

    :catch_0
    move-exception v0

    const/4 v13, 0x1

    goto :goto_c

    :catch_1
    move-exception v0

    .line 8
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v13

    const-string v13, "EXCEPTION : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_d
    const/4 v0, 0x2

    if-eqz v16, :cond_f

    iget-object v4, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    sget-object v8, Lb/g/b/i/i;->a:[Z

    const/4 v13, 0x0

    .line 9
    aput-boolean v13, v8, v0

    invoke-virtual {v1, v4}, Lb/g/b/i/d;->D(Lb/g/b/d;)V

    iget-object v8, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v8, :cond_10

    iget-object v0, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/b/i/d;

    invoke-virtual {v0, v4}, Lb/g/b/i/d;->D(Lb/g/b/d;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x2

    goto :goto_e

    .line 10
    :cond_f
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v1, v0}, Lb/g/b/i/d;->D(Lb/g/b/d;)V

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v12, :cond_10

    iget-object v4, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/b/i/d;

    iget-object v8, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v4, v8}, Lb/g/b/i/d;->D(Lb/g/b/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_10
    if-eqz v11, :cond_13

    const/16 v0, 0x8

    if-ge v15, v0, :cond_13

    sget-object v0, Lb/g/b/i/i;->a:[Z

    const/4 v4, 0x2

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_10
    if-ge v0, v12, :cond_11

    iget-object v13, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lb/g/b/i/d;

    move/from16 v16, v11

    iget v11, v13, Lb/g/b/i/d;->P:I

    invoke-virtual {v13}, Lb/g/b/i/d;->o()I

    move-result v17

    add-int v11, v17, v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v11, v13, Lb/g/b/i/d;->Q:I

    invoke-virtual {v13}, Lb/g/b/i/d;->i()I

    move-result v13

    add-int/2addr v13, v11

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v16

    goto :goto_10

    :cond_11
    move/from16 v16, v11

    iget v0, v1, Lb/g/b/i/d;->S:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, v1, Lb/g/b/i/d;->T:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ne v9, v3, :cond_12

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->o()I

    move-result v8

    if-ge v8, v0, :cond_12

    invoke-virtual {v1, v0}, Lb/g/b/i/d;->B(I)V

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v8, 0x0

    aput-object v3, v0, v8

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_11
    if-ne v7, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->i()I

    move-result v8

    if-ge v8, v4, :cond_14

    invoke-virtual {v1, v4}, Lb/g/b/i/d;->w(I)V

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_12

    :cond_13
    move/from16 v16, v11

    const/4 v0, 0x0

    :cond_14
    :goto_12
    iget v4, v1, Lb/g/b/i/d;->S:I

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->o()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->o()I

    move-result v8

    if-le v4, v8, :cond_15

    invoke-virtual {v1, v4}, Lb/g/b/i/d;->B(I)V

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    :cond_15
    iget v4, v1, Lb/g/b/i/d;->T:I

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->i()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->i()I

    move-result v8

    if-le v4, v8, :cond_16

    invoke-virtual {v1, v4}, Lb/g/b/i/d;->w(I)V

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_13

    :cond_16
    const/4 v4, 0x1

    :goto_13
    if-nez v14, :cond_18

    iget-object v8, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v11, 0x0

    aget-object v8, v8, v11

    if-ne v8, v3, :cond_17

    if-lez v5, :cond_17

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->o()I

    move-result v8

    if-le v8, v5, :cond_17

    iput-boolean v4, v1, Lb/g/b/i/e;->s0:Z

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v2, v0, v11

    invoke-virtual {v1, v5}, Lb/g/b/i/d;->B(I)V

    const/4 v0, 0x1

    const/4 v14, 0x1

    :cond_17
    iget-object v8, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v8, v8, v4

    if-ne v8, v3, :cond_18

    if-lez v6, :cond_18

    invoke-virtual/range {p0 .. p0}, Lb/g/b/i/d;->i()I

    move-result v8

    if-le v8, v6, :cond_18

    iput-boolean v4, v1, Lb/g/b/i/e;->t0:Z

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v2, v0, v4

    invoke-virtual {v1, v6}, Lb/g/b/i/d;->w(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_14

    :cond_18
    move v13, v0

    :goto_14
    move v0, v15

    move/from16 v11, v16

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_19
    iput-object v10, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    if-eqz v14, :cond_1a

    iget-object v0, v1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v2, 0x0

    aput-object v9, v0, v2

    const/4 v2, 0x1

    aput-object v7, v0, v2

    :cond_1a
    iget-object v0, v1, Lb/g/b/i/e;->k0:Lb/g/b/d;

    .line 11
    iget-object v0, v0, Lb/g/b/d;->m:Lb/g/b/c;

    .line 12
    invoke-virtual {v1, v0}, Lb/g/b/i/k;->v(Lb/g/b/c;)V

    return-void
.end method

.method public F(Lb/g/b/i/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Lb/g/b/i/e;->n0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/g/b/i/e;->q0:[Lb/g/b/i/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/g/b/i/b;

    iput-object p2, p0, Lb/g/b/i/e;->q0:[Lb/g/b/i/b;

    :cond_0
    iget-object p2, p0, Lb/g/b/i/e;->q0:[Lb/g/b/i/b;

    iget v1, p0, Lb/g/b/i/e;->n0:I

    new-instance v2, Lb/g/b/i/b;

    const/4 v3, 0x0

    .line 2
    iget-boolean v4, p0, Lb/g/b/i/e;->j0:Z

    .line 3
    invoke-direct {v2, p1, v3, v4}, Lb/g/b/i/b;-><init>(Lb/g/b/i/d;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Lb/g/b/i/e;->n0:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/g/b/i/e;->n0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 4
    iget p2, p0, Lb/g/b/i/e;->o0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Lb/g/b/i/e;->p0:[Lb/g/b/i/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lb/g/b/i/b;

    iput-object p2, p0, Lb/g/b/i/e;->p0:[Lb/g/b/i/b;

    :cond_2
    iget-object p2, p0, Lb/g/b/i/e;->p0:[Lb/g/b/i/b;

    iget v1, p0, Lb/g/b/i/e;->o0:I

    new-instance v2, Lb/g/b/i/b;

    .line 5
    iget-boolean v3, p0, Lb/g/b/i/e;->j0:Z

    .line 6
    invoke-direct {v2, p1, v0, v3}, Lb/g/b/i/b;-><init>(Lb/g/b/i/d;IZ)V

    aput-object v2, p2, v1

    iget p1, p0, Lb/g/b/i/e;->o0:I

    add-int/2addr p1, v0

    iput p1, p0, Lb/g/b/i/e;->o0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public G(Lb/g/b/d;)Z
    .locals 13

    sget-object v0, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v1, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    invoke-virtual {p0, p1}, Lb/g/b/i/d;->b(Lb/g/b/d;)V

    iget-object v2, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    iget-object v7, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/b/i/d;

    .line 1
    iget-object v8, v7, Lb/g/b/i/d;->I:[Z

    aput-boolean v3, v8, v3

    aput-boolean v3, v8, v6

    .line 2
    instance-of v7, v7, Lb/g/b/i/a;

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_7

    iget-object v7, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/b/i/d;

    instance-of v8, v7, Lb/g/b/i/a;

    if-eqz v8, :cond_6

    check-cast v7, Lb/g/b/i/a;

    const/4 v8, 0x0

    .line 3
    :goto_2
    iget v9, v7, Lb/g/b/i/h;->g0:I

    if-ge v8, v9, :cond_6

    iget-object v9, v7, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    aget-object v9, v9, v8

    iget v10, v7, Lb/g/b/i/a;->h0:I

    if-eqz v10, :cond_4

    if-ne v10, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eq v10, v4, :cond_3

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 4
    :cond_3
    iget-object v9, v9, Lb/g/b/i/d;->I:[Z

    aput-boolean v6, v9, v6

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v9, v9, Lb/g/b/i/d;->I:[Z

    aput-boolean v6, v9, v3

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_c

    .line 5
    iget-object v7, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/b/i/d;

    if-eqz v7, :cond_b

    .line 6
    instance-of v8, v7, Lb/g/b/i/j;

    if-nez v8, :cond_9

    instance-of v8, v7, Lb/g/b/i/f;

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_a

    .line 7
    invoke-virtual {v7, p1}, Lb/g/b/i/d;->b(Lb/g/b/d;)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_18

    .line 9
    iget-object v7, p0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/g/b/i/d;

    instance-of v8, v7, Lb/g/b/i/e;

    if-eqz v8, :cond_10

    iget-object v8, v7, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v9, v8, v3

    aget-object v10, v8, v6

    if-ne v9, v1, :cond_d

    .line 10
    aput-object v0, v8, v3

    :cond_d
    if-ne v10, v1, :cond_e

    .line 11
    iget-object v8, v7, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v0, v8, v6

    .line 12
    :cond_e
    invoke-virtual {v7, p1}, Lb/g/b/i/d;->b(Lb/g/b/d;)V

    if-ne v9, v1, :cond_f

    invoke-virtual {v7, v9}, Lb/g/b/i/d;->x(Lb/g/b/i/d$a;)V

    :cond_f
    if-ne v10, v1, :cond_17

    invoke-virtual {v7, v10}, Lb/g/b/i/d;->A(Lb/g/b/i/d$a;)V

    goto/16 :goto_b

    .line 13
    :cond_10
    sget-object v8, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    const/4 v9, -0x1

    iput v9, v7, Lb/g/b/i/d;->h:I

    iput v9, v7, Lb/g/b/i/d;->i:I

    iget-object v9, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v9, v9, v3

    if-eq v9, v1, :cond_11

    iget-object v9, v7, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v9, v9, v3

    if-ne v9, v8, :cond_11

    iget-object v9, v7, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget v9, v9, Lb/g/b/i/c;->e:I

    invoke-virtual {p0}, Lb/g/b/i/d;->o()I

    move-result v10

    iget-object v11, v7, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    iget v11, v11, Lb/g/b/i/c;->e:I

    sub-int/2addr v10, v11

    iget-object v11, v7, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    invoke-virtual {p1, v11}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v12

    iput-object v12, v11, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget-object v11, v7, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    invoke-virtual {p1, v11}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v12

    iput-object v12, v11, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget-object v11, v7, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->g:Lb/g/b/g;

    invoke-virtual {p1, v11, v9}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v11, v7, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    iget-object v11, v11, Lb/g/b/i/c;->g:Lb/g/b/g;

    invoke-virtual {p1, v11, v10}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iput v4, v7, Lb/g/b/i/d;->h:I

    .line 14
    iput v9, v7, Lb/g/b/i/d;->P:I

    sub-int/2addr v10, v9

    iput v10, v7, Lb/g/b/i/d;->L:I

    iget v9, v7, Lb/g/b/i/d;->S:I

    if-ge v10, v9, :cond_11

    iput v9, v7, Lb/g/b/i/d;->L:I

    .line 15
    :cond_11
    iget-object v9, p0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v9, v9, v6

    if-eq v9, v1, :cond_14

    iget-object v9, v7, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aget-object v9, v9, v6

    if-ne v9, v8, :cond_14

    iget-object v8, v7, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget v8, v8, Lb/g/b/i/c;->e:I

    invoke-virtual {p0}, Lb/g/b/i/d;->i()I

    move-result v9

    iget-object v10, v7, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget v10, v10, Lb/g/b/i/c;->e:I

    sub-int/2addr v9, v10

    iget-object v10, v7, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    invoke-virtual {p1, v10}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    iput-object v11, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget-object v10, v7, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    invoke-virtual {p1, v10}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    iput-object v11, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget-object v10, v7, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget-object v10, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    invoke-virtual {p1, v10, v8}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget-object v10, v7, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget-object v10, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    invoke-virtual {p1, v10, v9}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    iget v10, v7, Lb/g/b/i/d;->R:I

    if-gtz v10, :cond_12

    .line 16
    iget v10, v7, Lb/g/b/i/d;->X:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_13

    .line 17
    :cond_12
    iget-object v10, v7, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    invoke-virtual {p1, v10}, Lb/g/b/d;->l(Ljava/lang/Object;)Lb/g/b/g;

    move-result-object v11

    iput-object v11, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget-object v10, v7, Lb/g/b/i/d;->C:Lb/g/b/i/c;

    iget-object v10, v10, Lb/g/b/i/c;->g:Lb/g/b/g;

    iget v11, v7, Lb/g/b/i/d;->R:I

    add-int/2addr v11, v8

    invoke-virtual {p1, v10, v11}, Lb/g/b/d;->e(Lb/g/b/g;I)V

    :cond_13
    iput v4, v7, Lb/g/b/i/d;->i:I

    .line 18
    iput v8, v7, Lb/g/b/i/d;->Q:I

    sub-int/2addr v9, v8

    iput v9, v7, Lb/g/b/i/d;->M:I

    iget v8, v7, Lb/g/b/i/d;->T:I

    if-ge v9, v8, :cond_14

    iput v8, v7, Lb/g/b/i/d;->M:I

    .line 19
    :cond_14
    instance-of v8, v7, Lb/g/b/i/j;

    if-nez v8, :cond_16

    instance-of v8, v7, Lb/g/b/i/f;

    if-eqz v8, :cond_15

    goto :goto_9

    :cond_15
    const/4 v8, 0x0

    goto :goto_a

    :cond_16
    :goto_9
    const/4 v8, 0x1

    :goto_a
    if-nez v8, :cond_17

    .line 20
    invoke-virtual {v7, p1}, Lb/g/b/i/d;->b(Lb/g/b/d;)V

    :cond_17
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    :cond_18
    iget v0, p0, Lb/g/b/i/e;->n0:I

    if-lez v0, :cond_19

    invoke-static {p0, p1, v3}, La/a/a/a/a;->a(Lb/g/b/i/e;Lb/g/b/d;I)V

    :cond_19
    iget v0, p0, Lb/g/b/i/e;->o0:I

    if-lez v0, :cond_1a

    invoke-static {p0, p1, v6}, La/a/a/a/a;->a(Lb/g/b/i/e;Lb/g/b/d;I)V

    :cond_1a
    return v6
.end method

.method public H(ZI)Z
    .locals 13

    iget-object v0, p0, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    .line 1
    sget-object v1, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    sget-object v2, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    sget-object v3, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    const/4 v4, 0x1

    and-int/2addr p1, v4

    iget-object v5, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v5

    iget-object v7, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v7, v4}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v7

    iget-object v8, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v8}, Lb/g/b/i/d;->p()I

    move-result v8

    iget-object v9, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v9}, Lb/g/b/i/d;->q()I

    move-result v9

    if-eqz p1, :cond_4

    if-eq v5, v2, :cond_0

    if-ne v7, v2, :cond_4

    :cond_0
    iget-object v10, v0, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/g/b/i/l/m;

    iget v12, v11, Lb/g/b/i/l/m;->f:I

    if-ne v12, p2, :cond_1

    invoke-virtual {v11}, Lb/g/b/i/l/m;->k()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v5, v2, :cond_4

    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    .line 2
    iget-object v2, p1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v3, v2, v6

    .line 3
    invoke-virtual {v0, p1, v6}, Lb/g/b/i/l/e;->d(Lb/g/b/i/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lb/g/b/i/d;->B(I)V

    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v2, p1, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v2, v2, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-virtual {p1}, Lb/g/b/i/d;->o()I

    move-result p1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_4

    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    .line 4
    iget-object v2, p1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v3, v2, v4

    .line 5
    invoke-virtual {v0, p1, v4}, Lb/g/b/i/l/e;->d(Lb/g/b/i/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Lb/g/b/i/d;->w(I)V

    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v2, p1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v2, v2, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-virtual {p1}, Lb/g/b/i/d;->i()I

    move-result p1

    :goto_0
    invoke-virtual {v2, p1}, Lb/g/b/i/l/g;->c(I)V

    :cond_4
    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object p1, p1, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    if-nez p2, :cond_6

    aget-object v2, p1, v6

    if-eq v2, v3, :cond_5

    aget-object p1, p1, v6

    if-ne p1, v1, :cond_7

    :cond_5
    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {p1}, Lb/g/b/i/d;->o()I

    move-result p1

    add-int/2addr p1, v8

    iget-object v1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v1, v1, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v1, v1, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    invoke-virtual {v1, p1}, Lb/g/b/i/l/f;->c(I)V

    iget-object v1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v1, v1, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v1, v1, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    sub-int/2addr p1, v8

    goto :goto_2

    :cond_6
    aget-object v2, p1, v4

    if-eq v2, v3, :cond_8

    aget-object p1, p1, v4

    if-ne p1, v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    :goto_1
    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {p1}, Lb/g/b/i/d;->i()I

    move-result p1

    add-int/2addr p1, v9

    iget-object v1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v1, v1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v1, v1, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    invoke-virtual {v1, p1}, Lb/g/b/i/l/f;->c(I)V

    iget-object v1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v1, v1, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v1, v1, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    sub-int/2addr p1, v9

    :goto_2
    invoke-virtual {v1, p1}, Lb/g/b/i/l/g;->c(I)V

    const/4 p1, 0x1

    :goto_3
    invoke-virtual {v0}, Lb/g/b/i/l/e;->g()V

    iget-object v1, v0, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/b/i/l/m;

    iget v3, v2, Lb/g/b/i/l/m;->f:I

    if-eq v3, p2, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, v2, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget-object v8, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    if-ne v3, v8, :cond_a

    iget-boolean v3, v2, Lb/g/b/i/l/m;->g:Z

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lb/g/b/i/l/m;->e()V

    goto :goto_4

    :cond_b
    iget-object v1, v0, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/b/i/l/m;

    iget v3, v2, Lb/g/b/i/l/m;->f:I

    if-eq v3, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    iget-object v3, v2, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget-object v8, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    if-ne v3, v8, :cond_e

    goto :goto_5

    :cond_e
    iget-object v3, v2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v3, v3, Lb/g/b/i/l/f;->j:Z

    if-nez v3, :cond_f

    goto :goto_6

    :cond_f
    iget-object v3, v2, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v3, v3, Lb/g/b/i/l/f;->j:Z

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    instance-of v3, v2, Lb/g/b/i/l/c;

    if-nez v3, :cond_c

    iget-object v2, v2, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v2, v2, Lb/g/b/i/l/f;->j:Z

    if-nez v2, :cond_c

    :goto_6
    const/4 v4, 0x0

    :cond_11
    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {p1, v5}, Lb/g/b/i/d;->x(Lb/g/b/i/d$a;)V

    iget-object p1, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {p1, v7}, Lb/g/b/i/d;->A(Lb/g/b/i/d$a;)V

    return v4
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/g/b/i/l/e;->b:Z

    return-void
.end method

.method public J(I)V
    .locals 1

    iput p1, p0, Lb/g/b/i/e;->r0:I

    const/16 v0, 0x100

    invoke-static {p1, v0}, Lb/g/b/i/i;->a(II)Z

    move-result p1

    sput-boolean p1, Lb/g/b/d;->r:Z

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lb/g/b/i/e;->k0:Lb/g/b/d;

    invoke-virtual {v0}, Lb/g/b/d;->t()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/b/i/e;->l0:I

    iput v0, p0, Lb/g/b/i/e;->m0:I

    invoke-super {p0}, Lb/g/b/i/k;->u()V

    return-void
.end method
