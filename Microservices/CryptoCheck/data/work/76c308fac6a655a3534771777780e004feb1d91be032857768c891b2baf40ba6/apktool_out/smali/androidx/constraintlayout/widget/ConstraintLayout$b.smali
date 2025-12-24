.class public Landroidx/constraintlayout/widget/ConstraintLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/g/b/i/l/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public final a(Lb/g/b/i/d;Lb/g/b/i/l/b$a;)V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v4, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    sget-object v5, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    if-nez v1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v6, v1, Lb/g/b/i/d;->X:I

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    .line 2
    iget-boolean v6, v1, Lb/g/b/i/d;->x:Z

    if-nez v6, :cond_1

    .line 3
    iput v8, v2, Lb/g/b/i/l/b$a;->e:I

    iput v8, v2, Lb/g/b/i/l/b$a;->f:I

    iput v8, v2, Lb/g/b/i/l/b$a;->g:I

    return-void

    :cond_1
    iget-object v6, v2, Lb/g/b/i/l/b$a;->a:Lb/g/b/i/d$a;

    iget-object v7, v2, Lb/g/b/i/l/b$a;->b:Lb/g/b/i/d$a;

    iget v9, v2, Lb/g/b/i/l/b$a;->c:I

    iget v10, v2, Lb/g/b/i/l/b$a;->d:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    add-int/2addr v11, v12

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 4
    iget-object v13, v1, Lb/g/b/i/d;->W:Ljava/lang/Object;

    .line 5
    check-cast v13, Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v8, 0x2

    const/4 v15, 0x1

    if-eqz v14, :cond_d

    if-eq v14, v15, :cond_c

    if-eq v14, v8, :cond_5

    const/4 v9, 0x3

    if-eq v14, v9, :cond_2

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    const/4 v15, 0x2

    goto/16 :goto_5

    :cond_2
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    .line 6
    iget-object v14, v1, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    if-eqz v14, :cond_3

    iget v14, v14, Lb/g/b/i/c;->e:I

    const/16 v17, 0x0

    add-int/lit8 v14, v14, 0x0

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    iget-object v15, v1, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    if-eqz v15, :cond_4

    iget v15, v15, Lb/g/b/i/c;->e:I

    add-int/2addr v14, v15

    :cond_4
    add-int/2addr v12, v14

    const/4 v14, -0x1

    .line 7
    invoke-static {v9, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    iget-object v12, v1, Lb/g/b/i/d;->g:[I

    aput v14, v12, v8

    move v8, v9

    goto :goto_0

    :cond_5
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v14, -0x2

    invoke-static {v9, v12, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    iget v12, v1, Lb/g/b/i/d;->j:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_6

    const/4 v12, 0x1

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    iget-object v14, v1, Lb/g/b/i/d;->g:[I

    const/4 v15, 0x0

    aput v15, v14, v8

    iget-boolean v8, v2, Lb/g/b/i/l/b$a;->j:Z

    if-eqz v8, :cond_b

    if-eqz v12, :cond_7

    const/4 v8, 0x3

    aget v17, v14, v8

    if-eqz v17, :cond_7

    aget v8, v14, v15

    invoke-virtual/range {p1 .. p1}, Lb/g/b/i/d;->o()I

    move-result v14

    if-ne v8, v14, :cond_8

    :cond_7
    instance-of v8, v13, Lb/g/c/i;

    if-eqz v8, :cond_9

    :cond_8
    const/4 v8, 0x1

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    if-eqz v12, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lb/g/b/i/d;->o()I

    move-result v8

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_0

    :cond_b
    const/high16 v14, 0x40000000    # 2.0f

    move v8, v9

    const/4 v9, 0x1

    goto :goto_1

    :cond_c
    const/high16 v14, 0x40000000    # 2.0f

    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    const/4 v9, -0x2

    invoke-static {v8, v12, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    iget-object v12, v1, Lb/g/b/i/d;->g:[I

    const/4 v15, 0x2

    aput v9, v12, v15

    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    const/high16 v14, 0x40000000    # 2.0f

    const/4 v15, 0x2

    invoke-static {v9, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v12, v1, Lb/g/b/i/d;->g:[I

    aput v9, v12, v15

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_19

    const/4 v14, 0x1

    if-eq v12, v14, :cond_18

    if-eq v12, v15, :cond_11

    const/4 v10, 0x3

    if-eq v12, v10, :cond_e

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_e
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 8
    iget-object v12, v1, Lb/g/b/i/d;->y:Lb/g/b/i/c;

    if-eqz v12, :cond_f

    iget-object v12, v1, Lb/g/b/i/d;->z:Lb/g/b/i/c;

    iget v12, v12, Lb/g/b/i/c;->e:I

    const/4 v14, 0x0

    add-int/2addr v12, v14

    goto :goto_6

    :cond_f
    const/4 v12, 0x0

    :goto_6
    iget-object v14, v1, Lb/g/b/i/d;->A:Lb/g/b/i/c;

    if-eqz v14, :cond_10

    iget-object v14, v1, Lb/g/b/i/d;->B:Lb/g/b/i/c;

    iget v14, v14, Lb/g/b/i/c;->e:I

    add-int/2addr v12, v14

    :cond_10
    add-int/2addr v11, v12

    const/4 v12, -0x1

    .line 9
    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    iget-object v11, v1, Lb/g/b/i/d;->g:[I

    const/4 v14, 0x3

    aput v12, v11, v14

    :goto_7
    move v11, v10

    goto :goto_b

    :cond_11
    const/4 v14, 0x3

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v12, -0x2

    invoke-static {v10, v11, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    iget v11, v1, Lb/g/b/i/d;->k:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12

    const/4 v11, 0x1

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    :goto_8
    iget-object v15, v1, Lb/g/b/i/d;->g:[I

    const/16 v16, 0x0

    aput v16, v15, v14

    iget-boolean v14, v2, Lb/g/b/i/l/b$a;->j:Z

    if-eqz v14, :cond_17

    if-eqz v11, :cond_13

    const/4 v14, 0x2

    aget v16, v15, v14

    if-eqz v16, :cond_13

    aget v14, v15, v12

    invoke-virtual/range {p1 .. p1}, Lb/g/b/i/d;->i()I

    move-result v12

    if-ne v14, v12, :cond_14

    :cond_13
    instance-of v12, v13, Lb/g/c/i;

    if-eqz v12, :cond_15

    :cond_14
    const/4 v12, 0x1

    goto :goto_9

    :cond_15
    const/4 v12, 0x0

    :goto_9
    if-eqz v11, :cond_16

    if-eqz v12, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lb/g/b/i/d;->i()I

    move-result v10

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_7

    :cond_17
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_a

    :cond_18
    const/high16 v12, 0x40000000    # 2.0f

    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    const/4 v14, -0x2

    invoke-static {v10, v11, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    iget-object v11, v1, Lb/g/b/i/d;->g:[I

    const/4 v15, 0x3

    aput v14, v11, v15

    :goto_a
    move v11, v10

    const/4 v10, 0x1

    goto :goto_c

    :cond_19
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v15, 0x3

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget-object v12, v1, Lb/g/b/i/d;->g:[I

    aput v10, v12, v15

    :goto_b
    const/4 v10, 0x0

    :goto_c
    if-ne v6, v5, :cond_1a

    const/4 v12, 0x1

    goto :goto_d

    :cond_1a
    const/4 v12, 0x0

    :goto_d
    if-ne v7, v5, :cond_1b

    const/4 v5, 0x1

    goto :goto_e

    :cond_1b
    const/4 v5, 0x0

    :goto_e
    if-eq v7, v4, :cond_1d

    if-ne v7, v3, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v7, 0x0

    goto :goto_10

    :cond_1d
    :goto_f
    const/4 v7, 0x1

    :goto_10
    if-eq v6, v4, :cond_1f

    if-ne v6, v3, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    const/4 v3, 0x1

    :goto_12
    const/4 v4, 0x0

    if-eqz v12, :cond_20

    iget v6, v1, Lb/g/b/i/d;->N:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_20

    const/4 v6, 0x1

    goto :goto_13

    :cond_20
    const/4 v6, 0x0

    :goto_13
    if-eqz v5, :cond_21

    iget v14, v1, Lb/g/b/i/d;->N:F

    cmpl-float v4, v14, v4

    if-lez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_14

    :cond_21
    const/4 v4, 0x0

    :goto_14
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-boolean v15, v2, Lb/g/b/i/l/b$a;->j:Z

    if-nez v15, :cond_23

    if-eqz v12, :cond_23

    iget v12, v1, Lb/g/b/i/d;->j:I

    if-nez v12, :cond_23

    if-eqz v5, :cond_23

    iget v5, v1, Lb/g/b/i/d;->k:I

    if-eqz v5, :cond_22

    goto :goto_15

    :cond_22
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    goto/16 :goto_1e

    :cond_23
    :goto_15
    instance-of v5, v13, Lb/g/c/l;

    if-eqz v5, :cond_24

    instance-of v5, v1, Lb/g/b/i/j;

    if-eqz v5, :cond_24

    move-object v5, v1

    check-cast v5, Lb/g/b/i/j;

    move-object v5, v13

    check-cast v5, Lb/g/c/l;

    invoke-virtual {v5}, Lb/g/c/l;->j()V

    goto :goto_16

    :cond_24
    invoke-virtual {v13, v8, v11}, Landroid/view/View;->measure(II)V

    :goto_16
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eqz v9, :cond_25

    iget-object v9, v1, Lb/g/b/i/d;->g:[I

    const/16 v17, 0x0

    aput v5, v9, v17

    const/16 v16, 0x2

    aput v12, v9, v16

    goto :goto_17

    :cond_25
    const/16 v16, 0x2

    const/16 v17, 0x0

    iget-object v9, v1, Lb/g/b/i/d;->g:[I

    aput v17, v9, v17

    aput v17, v9, v16

    :goto_17
    if-eqz v10, :cond_26

    iget-object v9, v1, Lb/g/b/i/d;->g:[I

    const/4 v10, 0x1

    aput v12, v9, v10

    const/16 v16, 0x3

    aput v5, v9, v16

    goto :goto_18

    :cond_26
    const/4 v10, 0x1

    const/16 v16, 0x3

    iget-object v9, v1, Lb/g/b/i/d;->g:[I

    aput v17, v9, v10

    aput v17, v9, v16

    :goto_18
    iget v9, v1, Lb/g/b/i/d;->m:I

    if-lez v9, :cond_27

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_19

    :cond_27
    move v9, v5

    :goto_19
    iget v10, v1, Lb/g/b/i/d;->n:I

    if-lez v10, :cond_28

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_28
    iget v10, v1, Lb/g/b/i/d;->p:I

    if-lez v10, :cond_29

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1a

    :cond_29
    move v10, v12

    :goto_1a
    iget v0, v1, Lb/g/b/i/d;->q:I

    if-lez v0, :cond_2a

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    :cond_2a
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v6, :cond_2b

    if-eqz v7, :cond_2b

    iget v3, v1, Lb/g/b/i/d;->N:F

    int-to-float v4, v10

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    goto :goto_1b

    :cond_2b
    if-eqz v4, :cond_2c

    if-eqz v3, :cond_2c

    iget v3, v1, Lb/g/b/i/d;->N:F

    int-to-float v4, v9

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v10, v0

    :cond_2c
    :goto_1b
    if-ne v5, v9, :cond_2e

    if-eq v12, v10, :cond_2d

    goto :goto_1d

    :cond_2d
    move v0, v9

    move v3, v10

    :goto_1c
    const/4 v4, -0x1

    goto :goto_1e

    :cond_2e
    :goto_1d
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v9, :cond_2f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :cond_2f
    if-eq v12, v10, :cond_30

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :cond_30
    invoke-virtual {v13, v8, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v4

    goto :goto_1c

    :goto_1e
    if-eq v15, v4, :cond_31

    const/4 v4, 0x1

    goto :goto_1f

    :cond_31
    const/4 v4, 0x0

    :goto_1f
    iget v5, v2, Lb/g/b/i/l/b$a;->c:I

    if-ne v0, v5, :cond_33

    iget v5, v2, Lb/g/b/i/l/b$a;->d:I

    if-eq v3, v5, :cond_32

    goto :goto_20

    :cond_32
    const/4 v8, 0x0

    goto :goto_21

    :cond_33
    :goto_20
    const/4 v8, 0x1

    :goto_21
    iput-boolean v8, v2, Lb/g/b/i/l/b$a;->i:Z

    iget-boolean v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    if-eqz v5, :cond_34

    const/4 v14, 0x1

    goto :goto_22

    :cond_34
    move v14, v4

    :goto_22
    if-eqz v14, :cond_35

    const/4 v4, -0x1

    if-eq v15, v4, :cond_35

    .line 10
    iget v1, v1, Lb/g/b/i/d;->R:I

    if-eq v1, v15, :cond_35

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v2, Lb/g/b/i/l/b$a;->i:Z

    :cond_35
    iput v0, v2, Lb/g/b/i/l/b$a;->e:I

    iput v3, v2, Lb/g/b/i/l/b$a;->f:I

    iput-boolean v14, v2, Lb/g/b/i/l/b$a;->h:Z

    iput v15, v2, Lb/g/b/i/l/b$a;->g:I

    return-void
.end method
