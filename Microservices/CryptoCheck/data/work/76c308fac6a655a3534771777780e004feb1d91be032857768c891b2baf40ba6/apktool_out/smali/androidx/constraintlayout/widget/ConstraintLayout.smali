.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;,
        Landroidx/constraintlayout/widget/ConstraintLayout$b;
    }
.end annotation


# instance fields
.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lb/g/b/i/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:Lb/g/c/e;

.field public l:Lb/g/c/d;

.field public m:I

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lb/g/b/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    new-instance p1, Lb/g/b/i/e;

    invoke-direct {p1}, Lb/g/b/i/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x107

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/c/d;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 1
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 2
    iput-object p0, v2, Lb/g/b/i/d;->W:Ljava/lang/Object;

    .line 3
    iput-object v1, v2, Lb/g/b/i/e;->i0:Lb/g/b/i/l/b$b;

    iget-object v2, v2, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    .line 4
    iput-object v1, v2, Lb/g/b/i/l/e;->f:Lb/g/b/i/l/b$b;

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/g/c/k;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p2, v2, p1, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto/16 :goto_2

    :cond_0
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_1
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_2
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    :cond_3
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    :cond_4
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v3, v4, :cond_5

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_6

    .line 6
    :try_start_0
    new-instance v4, Lb/g/c/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3}, Lb/g/c/d;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/c/d;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/c/d;

    goto :goto_2

    :cond_5
    sget v4, Lb/g/c/k;->ConstraintLayout_Layout_constraintSet:I

    if-ne v3, v4, :cond_6

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    :try_start_1
    new-instance v4, Lb/g/c/e;

    invoke-direct {v4}, Lb/g/c/e;-><init>()V

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lb/g/c/e;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    :goto_1
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, p2}, Lb/g/b/i/e;->J(I)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public a(ZLandroid/view/View;Lb/g/b/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lb/g/b/i/d;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Lb/g/b/i/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    sget-object v5, Lb/g/b/i/c$a;->g:Lb/g/b/i/c$a;

    sget-object v6, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    sget-object v7, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    sget-object v8, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v9, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    sget-object v10, Lb/g/b/i/c$a;->e:Lb/g/b/i/c$a;

    sget-object v11, Lb/g/b/i/c$a;->c:Lb/g/b/i/c$a;

    sget-object v12, Lb/g/b/i/c$a;->f:Lb/g/b/i/c$a;

    sget-object v13, Lb/g/b/i/c$a;->d:Lb/g/b/i/c$a;

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v14

    .line 1
    iput v14, v2, Lb/g/b/i/d;->X:I

    .line 2
    iget-boolean v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    const/4 v15, 0x1

    if-eqz v14, :cond_0

    .line 3
    iput-boolean v15, v2, Lb/g/b/i/d;->x:Z

    const/16 v14, 0x8

    .line 4
    iput v14, v2, Lb/g/b/i/d;->X:I

    .line 5
    :cond_0
    iput-object v1, v2, Lb/g/b/i/d;->W:Ljava/lang/Object;

    .line 6
    instance-of v14, v1, Lb/g/c/c;

    if-eqz v14, :cond_5

    check-cast v1, Lb/g/c/c;

    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 7
    iget-boolean v14, v14, Lb/g/b/i/e;->j0:Z

    .line 8
    check-cast v1, Lb/g/c/a;

    .line 9
    iget v15, v1, Lb/g/c/a;->i:I

    .line 10
    iput v15, v1, Lb/g/c/a;->j:I

    move-object/from16 v17, v7

    const/4 v7, 0x5

    move-object/from16 v18, v8

    const/4 v8, 0x6

    if-eqz v14, :cond_2

    if-ne v15, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v15, v8, :cond_4

    goto :goto_0

    :cond_2
    if-ne v15, v7, :cond_3

    :goto_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    if-ne v15, v8, :cond_4

    :goto_1
    const/4 v7, 0x1

    :goto_2
    iput v7, v1, Lb/g/c/a;->j:I

    :cond_4
    instance-of v7, v2, Lb/g/b/i/a;

    if-eqz v7, :cond_6

    move-object v7, v2

    check-cast v7, Lb/g/b/i/a;

    iget v1, v1, Lb/g/c/a;->j:I

    .line 11
    iput v1, v7, Lb/g/b/i/a;->h0:I

    goto :goto_3

    :cond_5
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .line 12
    :cond_6
    :goto_3
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    const/4 v7, -0x1

    if-eqz v1, :cond_9

    move-object v1, v2

    check-cast v1, Lb/g/b/i/f;

    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j0:I

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k0:I

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_7

    if-lez v6, :cond_2c

    .line 13
    iput v3, v1, Lb/g/b/i/f;->f0:F

    iput v7, v1, Lb/g/b/i/f;->g0:I

    iput v7, v1, Lb/g/b/i/f;->h0:I

    goto/16 :goto_17

    :cond_7
    if-eq v2, v7, :cond_8

    if-le v2, v7, :cond_2c

    .line 14
    iput v5, v1, Lb/g/b/i/f;->f0:F

    iput v2, v1, Lb/g/b/i/f;->g0:I

    iput v7, v1, Lb/g/b/i/f;->h0:I

    goto/16 :goto_17

    :cond_8
    if-eq v4, v7, :cond_2c

    if-le v4, v7, :cond_2c

    .line 15
    iput v5, v1, Lb/g/b/i/f;->f0:F

    iput v7, v1, Lb/g/b/i/f;->g0:I

    iput v4, v1, Lb/g/b/i/f;->h0:I

    goto/16 :goto_17

    .line 16
    :cond_9
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c0:I

    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d0:I

    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e0:I

    iget v15, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f0:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g0:I

    move-object/from16 v19, v6

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h0:I

    move-object/from16 v20, v9

    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i0:F

    move/from16 v21, v9

    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    move-object/from16 v22, v5

    const/4 v5, -0x1

    if-eq v9, v5, :cond_a

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_15

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 17
    sget-object v6, Lb/g/b/i/c$a;->h:Lb/g/b/i/c$a;

    .line 18
    invoke-virtual {v2, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v7

    invoke-virtual {v1, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v5, v6, v8}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    .line 19
    iput v4, v2, Lb/g/b/i/d;->v:F

    goto/16 :goto_c

    :cond_a
    if-eq v1, v5, :cond_b

    .line 20
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_c

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 21
    invoke-virtual {v2, v11}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v9

    invoke-virtual {v1, v11}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    :goto_4
    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    if-eq v8, v5, :cond_c

    .line 22
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_c

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 23
    invoke-virtual {v2, v11}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v9

    invoke-virtual {v1, v10}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    goto :goto_4

    :goto_5
    invoke-virtual {v9, v1, v8, v7, v5}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    :cond_c
    const/4 v1, -0x1

    if-eq v14, v1, :cond_d

    .line 24
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/g/b/i/d;

    if-eqz v5, :cond_e

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 25
    invoke-virtual {v2, v10}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v5, v11}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v5

    :goto_6
    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    if-eq v15, v1, :cond_e

    .line 26
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_e

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 27
    invoke-virtual {v2, v10}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v1, v10}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v5

    goto :goto_6

    :goto_7
    invoke-virtual {v8, v5, v7, v6, v1}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    .line 28
    :cond_e
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_f

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_10

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 29
    invoke-virtual {v2, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v1, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    :goto_8
    const/4 v5, 0x1

    goto :goto_9

    .line 30
    :cond_f
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    if-eq v1, v5, :cond_10

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_10

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 31
    invoke-virtual {v2, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v1, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    goto :goto_8

    :goto_9
    invoke-virtual {v8, v1, v6, v7, v5}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    .line 32
    :cond_10
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_11

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_12

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 33
    invoke-virtual {v2, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v1, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    :goto_a
    const/4 v5, 0x1

    goto :goto_b

    .line 34
    :cond_11
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    if-eq v1, v5, :cond_12

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/b/i/d;

    if-eqz v1, :cond_12

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 35
    invoke-virtual {v2, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v8

    invoke-virtual {v1, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    goto :goto_a

    :goto_b
    invoke-virtual {v8, v1, v6, v7, v5}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    .line 36
    :cond_12
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_13

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/b/i/d;

    if-eqz v4, :cond_13

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v5, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    iput-boolean v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    move-object/from16 v6, v22

    invoke-virtual {v2, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v7

    invoke-virtual {v4, v6}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v6, v8, v5}, Lb/g/b/i/c;->a(Lb/g/b/i/c;IIZ)Z

    .line 37
    iput-boolean v5, v2, Lb/g/b/i/d;->w:Z

    .line 38
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m0:Lb/g/b/i/d;

    .line 39
    iput-boolean v5, v1, Lb/g/b/i/d;->w:Z

    .line 40
    invoke-virtual {v2, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/g/b/i/c;->e()V

    invoke-virtual {v2, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/g/b/i/c;->e()V

    :cond_13
    const/4 v1, 0x0

    cmpl-float v4, v21, v1

    if-ltz v4, :cond_14

    move/from16 v4, v21

    .line 41
    iput v4, v2, Lb/g/b/i/d;->U:F

    .line 42
    :cond_14
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_15

    .line 43
    iput v4, v2, Lb/g/b/i/d;->V:F

    :cond_15
    :goto_c
    if-eqz p1, :cond_17

    .line 44
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_16

    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-eq v1, v4, :cond_17

    :cond_16
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 45
    iput v1, v2, Lb/g/b/i/d;->P:I

    iput v4, v2, Lb/g/b/i/d;->Q:I

    .line 46
    :cond_17
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    const/4 v4, -0x2

    if-nez v1, :cond_1a

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_19

    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    if-eqz v1, :cond_18

    .line 47
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v5, 0x0

    aput-object v20, v1, v5

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v19, v1, v5

    .line 48
    :goto_d
    invoke-virtual {v2, v11}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v1, Lb/g/b/i/c;->e:I

    invoke-virtual {v2, v10}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v1, Lb/g/b/i/c;->e:I

    goto :goto_e

    :cond_19
    const/4 v5, 0x0

    .line 49
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v20, v1, v5

    .line 50
    invoke-virtual {v2, v5}, Lb/g/b/i/d;->B(I)V

    goto :goto_e

    :cond_1a
    const/4 v5, 0x0

    .line 51
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v18, v1, v5

    .line 52
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v1}, Lb/g/b/i/d;->B(I)V

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v4, :cond_1b

    .line 53
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v17, v1, v5

    .line 54
    :cond_1b
    :goto_e
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v1, :cond_1e

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1d

    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    if-eqz v1, :cond_1c

    .line 55
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v6, 0x1

    aput-object v20, v1, v6

    goto :goto_f

    :cond_1c
    const/4 v6, 0x1

    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v19, v1, v6

    .line 56
    :goto_f
    invoke-virtual {v2, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v1, Lb/g/b/i/c;->e:I

    invoke-virtual {v2, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v1, Lb/g/b/i/c;->e:I

    goto :goto_10

    :cond_1d
    const/4 v6, 0x1

    .line 57
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v20, v1, v6

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v2, v1}, Lb/g/b/i/d;->w(I)V

    goto :goto_10

    :cond_1e
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 59
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v18, v1, v6

    .line 60
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v1}, Lb/g/b/i/d;->w(I)V

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v4, :cond_1f

    .line 61
    iget-object v1, v2, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v17, v1, v6

    .line 62
    :cond_1f
    :goto_10
    iget-object v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_14

    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_23

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_23

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v7, "W"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto :goto_11

    :cond_21
    const-string v7, "H"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const/4 v7, 0x1

    const/16 v16, 0x1

    goto :goto_11

    :cond_22
    const/4 v7, 0x1

    const/16 v16, -0x1

    :goto_11
    add-int/2addr v6, v7

    move/from16 v5, v16

    goto :goto_12

    :cond_23
    const/4 v7, 0x1

    const/4 v6, 0x0

    :goto_12
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_25

    sub-int/2addr v4, v7

    if-ge v8, v4, :cond_25

    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v8, v7

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_26

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-lez v7, :cond_26

    cmpl-float v7, v1, v6

    if-lez v7, :cond_26

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_13

    :cond_24
    div-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :cond_25
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_13

    :catch_0
    :cond_26
    const/4 v1, 0x0

    :goto_13
    const/4 v4, 0x0

    cmpl-float v6, v1, v4

    if-lez v6, :cond_28

    iput v1, v2, Lb/g/b/i/d;->N:F

    iput v5, v2, Lb/g/b/i/d;->O:I

    goto :goto_15

    :cond_27
    :goto_14
    const/4 v4, 0x0

    iput v4, v2, Lb/g/b/i/d;->N:F

    .line 64
    :cond_28
    :goto_15
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    .line 65
    iget-object v4, v2, Lb/g/b/i/d;->c0:[F

    const/4 v6, 0x0

    aput v1, v4, v6

    .line 66
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    const/4 v5, 0x1

    .line 67
    aput v1, v4, v5

    .line 68
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    .line 69
    iput v1, v2, Lb/g/b/i/d;->a0:I

    .line 70
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 71
    iput v1, v2, Lb/g/b/i/d;->b0:I

    .line 72
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    .line 73
    iput v1, v2, Lb/g/b/i/d;->j:I

    iput v4, v2, Lb/g/b/i/d;->m:I

    const v1, 0x7fffffff

    if-ne v5, v1, :cond_29

    const/4 v5, 0x0

    :cond_29
    iput v5, v2, Lb/g/b/i/d;->n:I

    iput v7, v2, Lb/g/b/i/d;->o:F

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2a

    cmpg-float v7, v7, v5

    if-gez v7, :cond_2a

    iget v7, v2, Lb/g/b/i/d;->j:I

    if-nez v7, :cond_2a

    iput v4, v2, Lb/g/b/i/d;->j:I

    .line 74
    :cond_2a
    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 75
    iput v7, v2, Lb/g/b/i/d;->k:I

    iput v8, v2, Lb/g/b/i/d;->p:I

    if-ne v9, v1, :cond_2b

    const/4 v15, 0x0

    goto :goto_16

    :cond_2b
    move v15, v9

    :goto_16
    iput v15, v2, Lb/g/b/i/d;->q:I

    iput v3, v2, Lb/g/b/i/d;->r:F

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_2c

    cmpg-float v1, v3, v5

    if-gez v1, :cond_2c

    iget v1, v2, Lb/g/b/i/d;->k:I

    if-nez v1, :cond_2c

    iput v4, v2, Lb/g/b/i/d;->k:I

    :cond_2c
    :goto_17
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p1
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/c/c;

    invoke-virtual {v4}, Lb/g/c/c;->h()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float v9, v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float v10, v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float v11, v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float v8, v8, v4

    float-to-int v8, v8

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final e(Landroid/view/View;)Lb/g/b/i/d;
    .locals 0

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m0:Lb/g/b/i/d;

    :goto_0
    return-object p1
.end method

.method public f()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public g(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 1
    iget v0, v0, Lb/g/b/i/e;->r0:I

    return v0
.end method

.method public final h()Z
    .locals 24

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_31

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_3

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lb/g/b/i/d;->u()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    if-eqz v9, :cond_9

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v10, :cond_9

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v0, :cond_4

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    .line 2
    :cond_5
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_6

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eq v6, v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v7, :cond_6

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_6
    if-ne v6, v7, :cond_7

    :goto_5
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    goto :goto_6

    :cond_7
    if-nez v6, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m0:Lb/g/b/i/d;

    .line 3
    :goto_6
    iput-object v5, v4, Lb/g/b/i/d;->Y:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 4
    :cond_9
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-eq v1, v0, :cond_b

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v10, :cond_b

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne v4, v5, :cond_a

    instance-of v4, v2, Lb/g/c/f;

    if-eqz v4, :cond_a

    check-cast v2, Lb/g/c/f;

    invoke-virtual {v2}, Lb/g/c/f;->getConstraintSet()Lb/g/c/e;

    move-result-object v2

    iput-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_b
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    if-eqz v1, :cond_20

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lb/g/c/e;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_1a

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v11

    iget-object v12, v1, Lb/g/c/e;->c:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "ConstraintSet"

    if-nez v12, :cond_c

    const-string v0, "id unknown "

    invoke-static {v0}, Lc/a/a/a/a;->e(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    :try_start_1
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    const-string v3, "UNKNOWN"

    .line 7
    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_c
    iget-boolean v12, v1, Lb/g/c/e;->b:Z

    if-eqz v12, :cond_e

    if-eq v11, v0, :cond_d

    goto :goto_a

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_a
    if-ne v11, v0, :cond_f

    :goto_b
    move/from16 v16, v2

    move/from16 v18, v8

    move/from16 v20, v9

    move/from16 v21, v10

    goto/16 :goto_12

    :cond_f
    iget-object v12, v1, Lb/g/c/e;->c:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v12, v1, Lb/g/c/e;->c:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/g/c/e$a;

    instance-of v13, v6, Lb/g/c/a;

    if-eqz v13, :cond_10

    iget-object v13, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iput v3, v13, Lb/g/c/e$b;->d0:I

    :cond_10
    iget-object v13, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v13, v13, Lb/g/c/e$b;->d0:I

    if-eq v13, v0, :cond_13

    if-eq v13, v3, :cond_11

    goto :goto_c

    :cond_11
    move-object v0, v6

    check-cast v0, Lb/g/c/a;

    invoke-virtual {v0, v11}, Landroid/view/View;->setId(I)V

    iget-object v3, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v3, v3, Lb/g/c/e$b;->b0:I

    invoke-virtual {v0, v3}, Lb/g/c/a;->setType(I)V

    iget-object v3, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v3, v3, Lb/g/c/e$b;->c0:I

    invoke-virtual {v0, v3}, Lb/g/c/a;->setMargin(I)V

    iget-object v3, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-boolean v3, v3, Lb/g/c/e$b;->j0:Z

    invoke-virtual {v0, v3}, Lb/g/c/a;->setAllowsGoneWidget(Z)V

    iget-object v3, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-object v11, v3, Lb/g/c/e$b;->e0:[I

    if-eqz v11, :cond_12

    invoke-virtual {v0, v11}, Lb/g/c/c;->setReferencedIds([I)V

    goto :goto_c

    :cond_12
    iget-object v11, v3, Lb/g/c/e$b;->f0:Ljava/lang/String;

    if-eqz v11, :cond_13

    invoke-virtual {v1, v0, v11}, Lb/g/c/e;->c(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v11

    iput-object v11, v3, Lb/g/c/e$b;->e0:[I

    iget-object v3, v12, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-object v3, v3, Lb/g/c/e$b;->e0:[I

    invoke-virtual {v0, v3}, Lb/g/c/c;->setReferencedIds([I)V

    :cond_13
    :goto_c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    invoke-virtual {v12, v3}, Lb/g/c/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    iget-object v11, v12, Lb/g/c/e$a;->f:Ljava/util/HashMap;

    const-string v13, "\" not found on "

    const-string v14, " Custom Attribute \""

    const-string v15, "TransitionLayout"

    move/from16 v16, v2

    .line 8
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v18, v8

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/c/b;

    move-object/from16 v19, v11

    const-string v11, "set"

    invoke-static {v11, v8}, Lc/a/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v20, v9

    :try_start_2
    iget-object v9, v0, Lb/g/c/b;->b:Lb/g/c/b$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    packed-switch v9, :pswitch_data_0

    move/from16 v21, v10

    goto/16 :goto_11

    :pswitch_0
    const/4 v9, 0x1

    move/from16 v21, v10

    :try_start_3
    new-array v10, v9, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lb/g/c/b;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_1
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v0, v0, Lb/g/c/b;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_2
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lb/g/c/b;->e:Ljava/lang/String;

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_3
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Landroid/graphics/drawable/Drawable;

    const/16 v22, 0x0

    aput-object v10, v9, v22

    invoke-virtual {v2, v11, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Lb/g/c/b;->g:I

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v10, v0, v22

    invoke-virtual {v9, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_4
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lb/g/c/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_5
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lb/g/c/b;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    :pswitch_6
    move/from16 v21, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x0

    aput-object v22, v10, v23

    invoke-virtual {v2, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lb/g/c/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v23

    invoke-virtual {v10, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_11

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v21, v10

    :goto_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_11

    :catch_6
    move-exception v0

    move/from16 v21, v10

    :goto_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_11

    :catch_7
    move-exception v0

    move/from16 v21, v10

    :goto_10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " must have a method "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    move/from16 v8, v18

    move-object/from16 v11, v19

    move/from16 v9, v20

    move/from16 v10, v21

    goto/16 :goto_d

    :cond_14
    move/from16 v18, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 9
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v12, Lb/g/c/e$a;->b:Lb/g/c/e$d;

    iget v2, v0, Lb/g/c/e$d;->c:I

    if-nez v2, :cond_15

    iget v0, v0, Lb/g/c/e$d;->b:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget-object v0, v12, Lb/g/c/e$a;->b:Lb/g/c/e$d;

    iget v0, v0, Lb/g/c/e$d;->d:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->b:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->c:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setRotationX(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->d:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setRotationY(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->e:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->f:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->g:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->g:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setPivotX(F)V

    :cond_16
    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->h:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->h:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_17
    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->i:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->j:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget v0, v0, Lb/g/c/e$e;->k:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v0, v12, Lb/g/c/e$a;->e:Lb/g/c/e$e;

    iget-boolean v2, v0, Lb/g/c/e$e;->l:Z

    if-eqz v2, :cond_19

    iget v0, v0, Lb/g/c/e$e;->m:F

    invoke-virtual {v6, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_12

    :cond_18
    move/from16 v16, v2

    move/from16 v18, v8

    move/from16 v20, v9

    move/from16 v21, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_12
    add-int/lit8 v5, v5, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x1

    move/from16 v2, v16

    move/from16 v8, v18

    move/from16 v9, v20

    move/from16 v10, v21

    goto/16 :goto_8

    :cond_1a
    move/from16 v18, v8

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, v1, Lb/g/c/e;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/e$a;

    iget-object v4, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v4, v4, Lb/g/c/e$b;->d0:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    goto :goto_15

    :cond_1c
    new-instance v4, Lb/g/c/a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lb/g/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    iget-object v5, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-object v6, v5, Lb/g/c/e$b;->e0:[I

    if-eqz v6, :cond_1d

    invoke-virtual {v4, v6}, Lb/g/c/c;->setReferencedIds([I)V

    goto :goto_14

    :cond_1d
    iget-object v6, v5, Lb/g/c/e$b;->f0:Ljava/lang/String;

    if-eqz v6, :cond_1e

    invoke-virtual {v1, v4, v6}, Lb/g/c/e;->c(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v5, Lb/g/c/e$b;->e0:[I

    iget-object v5, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-object v5, v5, Lb/g/c/e$b;->e0:[I

    invoke-virtual {v4, v5}, Lb/g/c/c;->setReferencedIds([I)V

    :cond_1e
    :goto_14
    iget-object v5, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v5, v5, Lb/g/c/e$b;->b0:I

    invoke-virtual {v4, v5}, Lb/g/c/a;->setType(I)V

    iget-object v5, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget v5, v5, Lb/g/c/e$b;->c0:I

    invoke-virtual {v4, v5}, Lb/g/c/a;->setMargin(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v5

    invoke-virtual {v4}, Lb/g/c/c;->i()V

    invoke-virtual {v3, v5}, Lb/g/c/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {v7, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    :goto_15
    iget-object v4, v3, Lb/g/c/e$a;->d:Lb/g/c/e$b;

    iget-boolean v4, v4, Lb/g/c/e$b;->a:Z

    if-eqz v4, :cond_1b

    new-instance v4, Lb/g/c/h;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lb/g/c/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb/g/c/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    invoke-virtual {v7, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_13

    :cond_20
    move/from16 v18, v8

    move/from16 v20, v9

    move/from16 v21, v10

    .line 10
    :cond_21
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 11
    iget-object v0, v0, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2a

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/c;

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v2, Lb/g/c/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lb/g/c/c;->setIds(Ljava/lang/String;)V

    :cond_22
    iget-object v3, v2, Lb/g/c/c;->e:Lb/g/b/i/g;

    if-nez v3, :cond_23

    goto/16 :goto_19

    :cond_23
    check-cast v3, Lb/g/b/i/h;

    const/4 v4, 0x0

    .line 14
    iput v4, v3, Lb/g/b/i/h;->g0:I

    iget-object v3, v3, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 15
    :goto_17
    iget v4, v2, Lb/g/c/c;->c:I

    if-ge v3, v4, :cond_29

    iget-object v4, v2, Lb/g/c/c;->b:[I

    aget v4, v4, v3

    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_24

    iget-object v6, v2, Lb/g/c/c;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Lb/g/c/c;->d(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_24

    iget-object v5, v2, Lb/g/c/c;->b:[I

    aput v6, v5, v3

    iget-object v5, v2, Lb/g/c/c;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v5

    :cond_24
    if-eqz v5, :cond_28

    iget-object v4, v2, Lb/g/c/c;->e:Lb/g/b/i/g;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v5

    check-cast v4, Lb/g/b/i/h;

    if-eqz v4, :cond_27

    if-eq v5, v4, :cond_28

    if-nez v5, :cond_25

    goto :goto_18

    .line 16
    :cond_25
    iget v6, v4, Lb/g/b/i/h;->g0:I

    add-int/lit8 v6, v6, 0x1

    iget-object v8, v4, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    array-length v9, v8

    if-le v6, v9, :cond_26

    array-length v6, v8

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lb/g/b/i/d;

    iput-object v6, v4, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    :cond_26
    iget-object v6, v4, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    iget v8, v4, Lb/g/b/i/h;->g0:I

    aput-object v5, v6, v8

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lb/g/b/i/h;->g0:I

    goto :goto_18

    :cond_27
    const/4 v0, 0x0

    throw v0

    :cond_28
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 17
    :cond_29
    iget-object v2, v2, Lb/g/c/c;->e:Lb/g/b/i/g;

    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    invoke-interface {v2, v3}, Lb/g/b/i/g;->a(Lb/g/b/i/e;)V

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    :cond_2a
    const/4 v0, 0x0

    move/from16 v8, v21

    :goto_1a
    if-ge v0, v8, :cond_2d

    .line 18
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lb/g/c/i;

    if-eqz v2, :cond_2c

    check-cast v1, Lb/g/c/i;

    .line 19
    iget v2, v1, Lb/g/c/i;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_2b

    iget v2, v1, Lb/g/c/i;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    iget v2, v1, Lb/g/c/i;->b:I

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lb/g/c/i;->c:Landroid/view/View;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    iget-object v2, v1, Lb/g/c/i;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 20
    :cond_2d
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v8, :cond_2e

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v2

    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v8, :cond_32

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v4

    if-nez v4, :cond_2f

    goto :goto_1d

    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 21
    iget-object v2, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v2, v4, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    if-eqz v2, :cond_30

    .line 23
    check-cast v2, Lb/g/b/i/k;

    .line 24
    iget-object v2, v2, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 25
    iput-object v2, v4, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    .line 26
    :cond_30
    iput-object v1, v4, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    .line 27
    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ZLandroid/view/View;Lb/g/b/i/d;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_31
    move/from16 v18, v8

    :cond_32
    return v18

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m0:Lb/g/b/i/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b0:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lb/g/b/i/d;->p()I

    move-result v0

    invoke-virtual {v1}, Lb/g/b/i/d;->q()I

    move-result v2

    invoke-virtual {v1}, Lb/g/b/i/d;->o()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lb/g/b/i/d;->i()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Lb/g/c/i;

    if-eqz v4, :cond_2

    check-cast p5, Lb/g/c/i;

    invoke-virtual {p5}, Lb/g/c/i;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/g/c/c;

    invoke-virtual {p2}, Lb/g/c/c;->f()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lb/g/b/i/d$a;->e:Lb/g/b/i/d$a;

    sget-object v4, Lb/g/b/i/d$a;->d:Lb/g/b/i/d$a;

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()Z

    move-result v6

    .line 1
    iput-boolean v6, v5, Lb/g/b/i/e;->j0:Z

    .line 2
    iget-boolean v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iput-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 3
    iget-object v7, v5, Lb/g/b/i/e;->g0:Lb/g/b/i/l/b;

    .line 4
    iget-object v8, v7, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    iget-object v10, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/b/i/d;

    invoke-virtual {v10}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v11

    if-eq v11, v4, :cond_0

    invoke-virtual {v10}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v11

    if-eq v11, v3, :cond_0

    invoke-virtual {v10}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v11

    if-eq v11, v4, :cond_0

    invoke-virtual {v10}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v11

    if-ne v11, v3, :cond_1

    :cond_0
    iget-object v11, v7, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lb/g/b/i/e;->I()V

    .line 5
    :cond_3
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 6
    sget-object v8, Lb/g/b/i/d$a;->b:Lb/g/b/i/d$a;

    sget-object v9, Lb/g/b/i/d$a;->c:Lb/g/b/i/d$a;

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v6, v14, v15

    move-object/from16 v16, v3

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v3

    move-object/from16 v17, v8

    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 7
    iput v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iput v15, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    iput v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    iput v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iput v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    iput v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v8

    const/4 v15, 0x0

    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v8, :cond_5

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->f()Z

    move-result v15

    if-eqz v15, :cond_6

    move v8, v2

    :cond_6
    :goto_2
    sub-int/2addr v11, v3

    sub-int/2addr v13, v6

    .line 9
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iget v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/high16 v15, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v10, v15, :cond_a

    if-eqz v10, :cond_8

    if-eq v10, v1, :cond_7

    move-object/from16 v1, v17

    goto :goto_3

    :cond_7
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v1, v2

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v15, v1

    move-object/from16 v19, v9

    move-object/from16 v1, v17

    goto :goto_6

    :cond_8
    if-nez v6, :cond_9

    goto :goto_4

    :cond_9
    move-object v1, v9

    :goto_3
    move-object/from16 v19, v9

    const/high16 v9, -0x80000000

    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    if-nez v6, :cond_b

    :goto_4
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v15, 0x0

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_b
    move v1, v11

    :goto_5
    move v15, v1

    move-object v1, v9

    move-object/from16 v19, v1

    :goto_6
    const/high16 v9, -0x80000000

    :goto_7
    if-eq v12, v9, :cond_f

    if-eqz v12, :cond_d

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v12, v9, :cond_c

    move-object/from16 v6, v17

    goto :goto_8

    :cond_c
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v6, v3

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v9, v6

    move/from16 v20, v13

    move-object/from16 v6, v17

    goto :goto_b

    :cond_d
    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v6, v19

    :goto_8
    move/from16 v20, v13

    const/4 v9, 0x0

    goto :goto_b

    :cond_f
    if-nez v6, :cond_10

    :goto_9
    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v9, v6

    move/from16 v20, v13

    :goto_a
    move-object/from16 v6, v19

    goto :goto_b

    :cond_10
    move v9, v13

    move/from16 v20, v9

    goto :goto_a

    :goto_b
    invoke-virtual {v5}, Lb/g/b/i/d;->o()I

    move-result v13

    move/from16 v21, v11

    const/4 v11, 0x1

    if-ne v15, v13, :cond_11

    invoke-virtual {v5}, Lb/g/b/i/d;->i()I

    move-result v13

    if-eq v9, v13, :cond_12

    .line 10
    :cond_11
    iget-object v13, v5, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    .line 11
    iput-boolean v11, v13, Lb/g/b/i/l/e;->c:Z

    :cond_12
    const/4 v13, 0x0

    .line 12
    iput v13, v5, Lb/g/b/i/d;->P:I

    .line 13
    iput v13, v5, Lb/g/b/i/d;->Q:I

    .line 14
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v11, v2

    move/from16 v23, v12

    .line 15
    iget-object v12, v5, Lb/g/b/i/d;->u:[I

    aput v11, v12, v13

    .line 16
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v11, v3

    const/16 v22, 0x1

    .line 17
    aput v11, v12, v22

    .line 18
    invoke-virtual {v5, v13}, Lb/g/b/i/d;->z(I)V

    invoke-virtual {v5, v13}, Lb/g/b/i/d;->y(I)V

    .line 19
    iget-object v11, v5, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v1, v11, v13

    .line 20
    invoke-virtual {v5, v15}, Lb/g/b/i/d;->B(I)V

    .line 21
    iget-object v1, v5, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    aput-object v6, v1, v22

    .line 22
    invoke-virtual {v5, v9}, Lb/g/b/i/d;->w(I)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v5, v1}, Lb/g/b/i/d;->z(I)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v1, v3

    invoke-virtual {v5, v1}, Lb/g/b/i/d;->y(I)V

    .line 23
    iput v8, v5, Lb/g/b/i/e;->l0:I

    iput v14, v5, Lb/g/b/i/e;->m0:I

    iget-object v1, v5, Lb/g/b/i/e;->g0:Lb/g/b/i/l/b;

    if-eqz v1, :cond_68

    .line 24
    sget-object v2, Lb/g/b/i/c$a;->f:Lb/g/b/i/c$a;

    sget-object v3, Lb/g/b/i/c$a;->e:Lb/g/b/i/c$a;

    iget-object v6, v5, Lb/g/b/i/e;->i0:Lb/g/b/i/l/b$b;

    .line 25
    iget-object v8, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5}, Lb/g/b/i/d;->o()I

    move-result v9

    invoke-virtual {v5}, Lb/g/b/i/d;->i()I

    move-result v11

    const/16 v12, 0x80

    invoke-static {v7, v12}, Lb/g/b/i/i;->a(II)Z

    move-result v12

    if-nez v12, :cond_14

    const/16 v13, 0x40

    invoke-static {v7, v13}, Lb/g/b/i/i;->a(II)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_c

    :cond_13
    const/4 v7, 0x0

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v7, 0x1

    :goto_d
    if-eqz v7, :cond_1d

    const/4 v13, 0x0

    :goto_e
    if-ge v13, v8, :cond_1d

    iget-object v14, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/g/b/i/d;

    invoke-virtual {v14}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v15

    move/from16 v24, v7

    if-ne v15, v4, :cond_15

    const/4 v15, 0x1

    goto :goto_f

    :cond_15
    const/4 v15, 0x0

    :goto_f
    invoke-virtual {v14}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v7

    if-ne v7, v4, :cond_16

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    const/4 v7, 0x0

    :goto_10
    if-eqz v15, :cond_17

    if-eqz v7, :cond_17

    .line 26
    iget v7, v14, Lb/g/b/i/d;->N:F

    const/4 v15, 0x0

    cmpl-float v7, v7, v15

    if-lez v7, :cond_17

    const/4 v7, 0x1

    goto :goto_11

    :cond_17
    const/4 v7, 0x0

    .line 27
    :goto_11
    invoke-virtual {v14}, Lb/g/b/i/d;->s()Z

    move-result v15

    if-eqz v15, :cond_18

    if-eqz v7, :cond_18

    goto :goto_12

    :cond_18
    invoke-virtual {v14}, Lb/g/b/i/d;->t()Z

    move-result v15

    if-eqz v15, :cond_19

    if-eqz v7, :cond_19

    goto :goto_12

    :cond_19
    instance-of v7, v14, Lb/g/b/i/j;

    if-eqz v7, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v14}, Lb/g/b/i/d;->s()Z

    move-result v7

    if-nez v7, :cond_1c

    invoke-virtual {v14}, Lb/g/b/i/d;->t()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_12

    :cond_1b
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v24

    goto :goto_e

    :cond_1c
    :goto_12
    const/high16 v7, 0x40000000    # 2.0f

    const/16 v24, 0x0

    goto :goto_13

    :cond_1d
    move/from16 v24, v7

    const/high16 v7, 0x40000000    # 2.0f

    :goto_13
    move/from16 v13, v23

    if-ne v10, v7, :cond_1e

    if-eq v13, v7, :cond_1f

    :cond_1e
    if-eqz v12, :cond_20

    :cond_1f
    const/4 v7, 0x1

    goto :goto_14

    :cond_20
    const/4 v7, 0x0

    :goto_14
    and-int v7, v24, v7

    if-eqz v7, :cond_3f

    .line 28
    iget-object v7, v5, Lb/g/b/i/d;->u:[I

    const/4 v15, 0x0

    aget v7, v7, v15

    move/from16 v15, v21

    .line 29
    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 30
    iget-object v15, v5, Lb/g/b/i/d;->u:[I

    const/16 v21, 0x1

    aget v15, v15, v21

    move/from16 v14, v20

    .line 31
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v10, v15, :cond_21

    invoke-virtual {v5}, Lb/g/b/i/d;->o()I

    move-result v15

    if-eq v15, v7, :cond_21

    invoke-virtual {v5, v7}, Lb/g/b/i/d;->B(I)V

    invoke-virtual {v5}, Lb/g/b/i/e;->I()V

    :cond_21
    const/high16 v7, 0x40000000    # 2.0f

    if-ne v13, v7, :cond_22

    invoke-virtual {v5}, Lb/g/b/i/d;->i()I

    move-result v15

    if-eq v15, v14, :cond_22

    invoke-virtual {v5, v14}, Lb/g/b/i/d;->w(I)V

    invoke-virtual {v5}, Lb/g/b/i/e;->I()V

    :cond_22
    if-ne v10, v7, :cond_38

    if-ne v13, v7, :cond_38

    .line 32
    iget-object v7, v5, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    const/4 v14, 0x1

    and-int/2addr v12, v14

    .line 33
    iget-boolean v14, v7, Lb/g/b/i/l/e;->b:Z

    if-nez v14, :cond_24

    iget-boolean v14, v7, Lb/g/b/i/l/e;->c:Z

    if-eqz v14, :cond_23

    goto :goto_15

    :cond_23
    const/4 v15, 0x0

    goto :goto_17

    :cond_24
    :goto_15
    iget-object v14, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v14, v14, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_16
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_25

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/g/b/i/d;

    move-object/from16 v20, v14

    const/4 v14, 0x0

    iput-boolean v14, v15, Lb/g/b/i/d;->a:Z

    iget-object v14, v15, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    invoke-virtual {v14}, Lb/g/b/i/l/j;->n()V

    iget-object v14, v15, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    invoke-virtual {v14}, Lb/g/b/i/l/l;->m()V

    move-object/from16 v14, v20

    goto :goto_16

    :cond_25
    iget-object v14, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lb/g/b/i/d;->a:Z

    iget-object v14, v14, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    invoke-virtual {v14}, Lb/g/b/i/l/j;->n()V

    iget-object v14, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v14, v14, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    invoke-virtual {v14}, Lb/g/b/i/l/l;->m()V

    iput-boolean v15, v7, Lb/g/b/i/l/e;->c:Z

    :goto_17
    iget-object v14, v7, Lb/g/b/i/l/e;->d:Lb/g/b/i/e;

    invoke-virtual {v7, v14}, Lb/g/b/i/l/e;->b(Lb/g/b/i/e;)Z

    iget-object v14, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    .line 34
    iput v15, v14, Lb/g/b/i/d;->P:I

    .line 35
    iput v15, v14, Lb/g/b/i/d;->Q:I

    .line 36
    invoke-virtual {v14, v15}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v14

    iget-object v15, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v15

    iget-boolean v0, v7, Lb/g/b/i/l/e;->b:Z

    if-eqz v0, :cond_26

    invoke-virtual {v7}, Lb/g/b/i/l/e;->c()V

    :cond_26
    iget-object v0, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v0}, Lb/g/b/i/d;->p()I

    move-result v0

    move-object/from16 v20, v2

    iget-object v2, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v2}, Lb/g/b/i/d;->q()I

    move-result v2

    move-object/from16 v21, v3

    iget-object v3, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v3, v3, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v3, v3, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    invoke-virtual {v3, v0}, Lb/g/b/i/l/f;->c(I)V

    iget-object v3, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v3, v3, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    invoke-virtual {v3, v2}, Lb/g/b/i/l/f;->c(I)V

    invoke-virtual {v7}, Lb/g/b/i/l/e;->g()V

    move-object/from16 v3, v19

    if-eq v14, v3, :cond_28

    if-ne v15, v3, :cond_27

    goto :goto_18

    :cond_27
    move-object/from16 v24, v6

    move/from16 v25, v9

    goto :goto_1a

    :cond_28
    :goto_18
    move/from16 v19, v12

    if-eqz v12, :cond_2a

    iget-object v12, v7, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_29
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lb/g/b/i/l/m;

    invoke-virtual/range {v24 .. v24}, Lb/g/b/i/l/m;->k()Z

    move-result v24

    if-nez v24, :cond_29

    const/16 v19, 0x0

    :cond_2a
    if-eqz v19, :cond_2b

    if-ne v14, v3, :cond_2b

    iget-object v12, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    move-object/from16 v24, v6

    .line 37
    iget-object v6, v12, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    move/from16 v25, v9

    const/4 v9, 0x0

    aput-object v17, v6, v9

    .line 38
    invoke-virtual {v7, v12, v9}, Lb/g/b/i/l/e;->d(Lb/g/b/i/e;I)I

    move-result v6

    invoke-virtual {v12, v6}, Lb/g/b/i/d;->B(I)V

    iget-object v6, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v9, v6, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v9, v9, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-virtual {v6}, Lb/g/b/i/d;->o()I

    move-result v6

    invoke-virtual {v9, v6}, Lb/g/b/i/l/g;->c(I)V

    goto :goto_19

    :cond_2b
    move-object/from16 v24, v6

    move/from16 v25, v9

    :goto_19
    if-eqz v19, :cond_2c

    if-ne v15, v3, :cond_2c

    iget-object v6, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    .line 39
    iget-object v9, v6, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v12, 0x1

    aput-object v17, v9, v12

    .line 40
    invoke-virtual {v7, v6, v12}, Lb/g/b/i/l/e;->d(Lb/g/b/i/e;I)I

    move-result v9

    invoke-virtual {v6, v9}, Lb/g/b/i/d;->w(I)V

    iget-object v6, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v9, v6, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v9, v9, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    invoke-virtual {v6}, Lb/g/b/i/d;->i()I

    move-result v6

    invoke-virtual {v9, v6}, Lb/g/b/i/l/g;->c(I)V

    :cond_2c
    :goto_1a
    iget-object v6, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v6, v6, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v9, 0x0

    aget-object v12, v6, v9

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    if-eq v12, v3, :cond_2e

    aget-object v6, v6, v9

    move-object/from16 v9, v16

    if-ne v6, v9, :cond_2d

    goto :goto_1b

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1c

    :cond_2e
    move-object/from16 v9, v16

    :goto_1b
    iget-object v6, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v6}, Lb/g/b/i/d;->o()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v12, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v12, v12, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v12, v12, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    invoke-virtual {v12, v6}, Lb/g/b/i/l/f;->c(I)V

    iget-object v12, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v12, v12, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v12, v12, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    sub-int/2addr v6, v0

    invoke-virtual {v12, v6}, Lb/g/b/i/l/g;->c(I)V

    invoke-virtual {v7}, Lb/g/b/i/l/e;->g()V

    iget-object v0, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v0, v0, Lb/g/b/i/d;->J:[Lb/g/b/i/d$a;

    const/4 v6, 0x1

    aget-object v12, v0, v6

    if-eq v12, v3, :cond_2f

    aget-object v0, v0, v6

    if-ne v0, v9, :cond_30

    :cond_2f
    iget-object v0, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v0}, Lb/g/b/i/d;->i()I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v3, v3, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    invoke-virtual {v3, v0}, Lb/g/b/i/l/f;->c(I)V

    iget-object v3, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v3, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lb/g/b/i/l/g;->c(I)V

    :cond_30
    invoke-virtual {v7}, Lb/g/b/i/l/e;->g()V

    const/4 v0, 0x1

    :goto_1c
    iget-object v2, v7, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/b/i/l/m;

    iget-object v6, v3, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget-object v9, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    if-ne v6, v9, :cond_31

    iget-boolean v6, v3, Lb/g/b/i/l/m;->g:Z

    if-nez v6, :cond_31

    goto :goto_1d

    :cond_31
    invoke-virtual {v3}, Lb/g/b/i/l/m;->e()V

    goto :goto_1d

    :cond_32
    iget-object v2, v7, Lb/g/b/i/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/b/i/l/m;

    if-nez v0, :cond_34

    iget-object v6, v3, Lb/g/b/i/l/m;->b:Lb/g/b/i/d;

    iget-object v9, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    if-ne v6, v9, :cond_34

    goto :goto_1e

    :cond_34
    iget-object v6, v3, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    iget-boolean v6, v6, Lb/g/b/i/l/f;->j:Z

    if-nez v6, :cond_35

    goto :goto_1f

    :cond_35
    iget-object v6, v3, Lb/g/b/i/l/m;->i:Lb/g/b/i/l/f;

    iget-boolean v6, v6, Lb/g/b/i/l/f;->j:Z

    if-nez v6, :cond_36

    instance-of v6, v3, Lb/g/b/i/l/h;

    if-nez v6, :cond_36

    goto :goto_1f

    :cond_36
    iget-object v6, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v6, v6, Lb/g/b/i/l/f;->j:Z

    if-nez v6, :cond_33

    instance-of v6, v3, Lb/g/b/i/l/c;

    if-nez v6, :cond_33

    instance-of v3, v3, Lb/g/b/i/l/h;

    if-nez v3, :cond_33

    :goto_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_37
    const/4 v0, 0x1

    :goto_20
    iget-object v2, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v2, v14}, Lb/g/b/i/d;->x(Lb/g/b/i/d$a;)V

    iget-object v2, v7, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    invoke-virtual {v2, v15}, Lb/g/b/i/d;->A(Lb/g/b/i/d$a;)V

    move v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x2

    goto/16 :goto_24

    :cond_38
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v6

    move/from16 v25, v9

    .line 41
    iget-object v0, v5, Lb/g/b/i/e;->h0:Lb/g/b/i/l/e;

    .line 42
    iget-boolean v2, v0, Lb/g/b/i/l/e;->b:Z

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v2, v2, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/b/i/d;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lb/g/b/i/d;->a:Z

    iget-object v7, v3, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v9, v7, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iput-boolean v6, v9, Lb/g/b/i/l/f;->j:Z

    iput-boolean v6, v7, Lb/g/b/i/l/m;->g:Z

    invoke-virtual {v7}, Lb/g/b/i/l/j;->n()V

    iget-object v3, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v7, v3, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iput-boolean v6, v7, Lb/g/b/i/l/f;->j:Z

    iput-boolean v6, v3, Lb/g/b/i/l/m;->g:Z

    invoke-virtual {v3}, Lb/g/b/i/l/l;->m()V

    goto :goto_21

    :cond_39
    const/4 v6, 0x0

    iget-object v2, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iput-boolean v6, v2, Lb/g/b/i/d;->a:Z

    iget-object v2, v2, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v3, v2, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iput-boolean v6, v3, Lb/g/b/i/l/f;->j:Z

    iput-boolean v6, v2, Lb/g/b/i/l/m;->g:Z

    invoke-virtual {v2}, Lb/g/b/i/l/j;->n()V

    iget-object v2, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v2, v2, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v3, v2, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iput-boolean v6, v3, Lb/g/b/i/l/f;->j:Z

    iput-boolean v6, v2, Lb/g/b/i/l/m;->g:Z

    invoke-virtual {v2}, Lb/g/b/i/l/l;->m()V

    invoke-virtual {v0}, Lb/g/b/i/l/e;->c()V

    goto :goto_22

    :cond_3a
    const/4 v6, 0x0

    :goto_22
    iget-object v2, v0, Lb/g/b/i/l/e;->d:Lb/g/b/i/e;

    invoke-virtual {v0, v2}, Lb/g/b/i/l/e;->b(Lb/g/b/i/e;)Z

    iget-object v2, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    .line 43
    iput v6, v2, Lb/g/b/i/d;->P:I

    .line 44
    iput v6, v2, Lb/g/b/i/d;->Q:I

    .line 45
    iget-object v2, v2, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v2, v2, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    invoke-virtual {v2, v6}, Lb/g/b/i/l/f;->c(I)V

    iget-object v0, v0, Lb/g/b/i/l/e;->a:Lb/g/b/i/e;

    iget-object v0, v0, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/m;->h:Lb/g/b/i/l/f;

    invoke-virtual {v0, v6}, Lb/g/b/i/l/f;->c(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v10, v0, :cond_3b

    .line 46
    invoke-virtual {v5, v12, v6}, Lb/g/b/i/e;->H(ZI)Z

    move-result v2

    const/4 v3, 0x1

    and-int/lit8 v22, v2, 0x1

    move/from16 v6, v22

    const/4 v2, 0x1

    goto :goto_23

    :cond_3b
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    :goto_23
    if-ne v13, v0, :cond_3c

    invoke-virtual {v5, v12, v3}, Lb/g/b/i/e;->H(ZI)Z

    move-result v7

    and-int v3, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_3c
    move v3, v6

    :goto_24
    if-eqz v3, :cond_40

    if-ne v10, v0, :cond_3d

    const/4 v6, 0x1

    goto :goto_25

    :cond_3d
    const/4 v6, 0x0

    :goto_25
    if-ne v13, v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_26

    :cond_3e
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {v5, v6, v0}, Lb/g/b/i/e;->C(ZZ)V

    goto :goto_27

    :cond_3f
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v24, v6

    move/from16 v25, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_40
    :goto_27
    if-eqz v3, :cond_41

    const/4 v0, 0x2

    if-eq v2, v0, :cond_65

    :cond_41
    if-lez v8, :cond_49

    .line 47
    iget-object v0, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 48
    iget-object v2, v5, Lb/g/b/i/e;->i0:Lb/g/b/i/l/b$b;

    const/4 v15, 0x0

    :goto_28
    if-ge v15, v0, :cond_46

    .line 49
    iget-object v3, v5, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/b/i/d;

    instance-of v6, v3, Lb/g/b/i/f;

    if-eqz v6, :cond_42

    goto :goto_2a

    :cond_42
    iget-object v6, v3, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v6, v6, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v6, v6, Lb/g/b/i/l/f;->j:Z

    if-eqz v6, :cond_43

    iget-object v6, v3, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v6, v6, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v6, v6, Lb/g/b/i/l/f;->j:Z

    if-eqz v6, :cond_43

    goto :goto_2a

    :cond_43
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v7

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lb/g/b/i/d;->h(I)Lb/g/b/i/d$a;

    move-result-object v9

    if-ne v7, v4, :cond_44

    iget v7, v3, Lb/g/b/i/d;->j:I

    if-eq v7, v6, :cond_44

    if-ne v9, v4, :cond_44

    iget v7, v3, Lb/g/b/i/d;->k:I

    if-eq v7, v6, :cond_44

    const/4 v6, 0x1

    goto :goto_29

    :cond_44
    const/4 v6, 0x0

    :goto_29
    if-eqz v6, :cond_45

    goto :goto_2a

    :cond_45
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v3, v6}, Lb/g/b/i/l/b;->a(Lb/g/b/i/l/b$b;Lb/g/b/i/d;Z)Z

    :goto_2a
    add-int/lit8 v15, v15, 0x1

    goto :goto_28

    :cond_46
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 50
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v15, 0x0

    :goto_2b
    if-ge v15, v0, :cond_48

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lb/g/c/i;

    if-eqz v4, :cond_47

    check-cast v3, Lb/g/c/i;

    invoke-virtual {v3}, Lb/g/c/i;->a()V

    :cond_47
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    :cond_48
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_49

    const/4 v15, 0x0

    :goto_2c
    if-ge v15, v0, :cond_49

    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/c/c;

    invoke-virtual {v3}, Lb/g/c/c;->g()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2c

    .line 55
    :cond_49
    iget v0, v5, Lb/g/b/i/e;->r0:I

    .line 56
    iget-object v2, v1, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v25

    if-lez v8, :cond_4a

    invoke-virtual {v1, v5, v3, v11}, Lb/g/b/i/l/b;->b(Lb/g/b/i/e;II)V

    :cond_4a
    if-lez v2, :cond_63

    invoke-virtual {v5}, Lb/g/b/i/d;->j()Lb/g/b/i/d$a;

    move-result-object v4

    move-object/from16 v6, v19

    if-ne v4, v6, :cond_4b

    const/4 v15, 0x1

    goto :goto_2d

    :cond_4b
    const/4 v15, 0x0

    :goto_2d
    invoke-virtual {v5}, Lb/g/b/i/d;->n()Lb/g/b/i/d$a;

    move-result-object v4

    if-ne v4, v6, :cond_4c

    const/4 v4, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v5}, Lb/g/b/i/d;->o()I

    move-result v6

    iget-object v7, v1, Lb/g/b/i/l/b;->c:Lb/g/b/i/e;

    .line 57
    iget v7, v7, Lb/g/b/i/d;->S:I

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5}, Lb/g/b/i/d;->i()I

    move-result v7

    iget-object v8, v1, Lb/g/b/i/l/b;->c:Lb/g/b/i/e;

    .line 59
    iget v8, v8, Lb/g/b/i/d;->T:I

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2f
    if-ge v8, v2, :cond_52

    iget-object v10, v1, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/g/b/i/d;

    instance-of v12, v10, Lb/g/b/i/j;

    if-nez v12, :cond_4d

    move/from16 v16, v0

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v14, v24

    goto/16 :goto_34

    :cond_4d
    invoke-virtual {v10}, Lb/g/b/i/d;->o()I

    move-result v12

    invoke-virtual {v10}, Lb/g/b/i/d;->i()I

    move-result v13

    move/from16 v16, v0

    move-object/from16 v14, v24

    const/4 v0, 0x1

    invoke-virtual {v1, v14, v10, v0}, Lb/g/b/i/l/b;->a(Lb/g/b/i/l/b$b;Lb/g/b/i/d;Z)Z

    move-result v17

    or-int v0, v9, v17

    invoke-virtual {v10}, Lb/g/b/i/d;->o()I

    move-result v9

    move/from16 v17, v0

    invoke-virtual {v10}, Lb/g/b/i/d;->i()I

    move-result v0

    if-eq v9, v12, :cond_4f

    invoke-virtual {v10, v9}, Lb/g/b/i/d;->B(I)V

    if-eqz v15, :cond_4e

    invoke-virtual {v10}, Lb/g/b/i/d;->m()I

    move-result v9

    if-le v9, v6, :cond_4e

    invoke-virtual {v10}, Lb/g/b/i/d;->m()I

    move-result v9

    move-object/from16 v12, v21

    invoke-virtual {v10, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lb/g/b/i/c;->b()I

    move-result v17

    add-int v9, v17, v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_30

    :cond_4e
    move-object/from16 v12, v21

    :goto_30
    const/16 v17, 0x1

    goto :goto_31

    :cond_4f
    move-object/from16 v12, v21

    :goto_31
    if-eq v0, v13, :cond_51

    invoke-virtual {v10, v0}, Lb/g/b/i/d;->w(I)V

    if-eqz v4, :cond_50

    invoke-virtual {v10}, Lb/g/b/i/d;->g()I

    move-result v0

    if-le v0, v7, :cond_50

    invoke-virtual {v10}, Lb/g/b/i/d;->g()I

    move-result v0

    move-object/from16 v13, v20

    invoke-virtual {v10, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v9

    invoke-virtual {v9}, Lb/g/b/i/c;->b()I

    move-result v9

    add-int/2addr v9, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v7, v0

    goto :goto_32

    :cond_50
    move-object/from16 v13, v20

    :goto_32
    const/16 v17, 0x1

    goto :goto_33

    :cond_51
    move-object/from16 v13, v20

    :goto_33
    check-cast v10, Lb/g/b/i/j;

    .line 61
    iget-boolean v0, v10, Lb/g/b/i/j;->h0:Z

    or-int v0, v0, v17

    move v9, v0

    :goto_34
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object/from16 v24, v14

    move/from16 v0, v16

    goto/16 :goto_2f

    :cond_52
    move/from16 v16, v0

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v14, v24

    const/4 v0, 0x0

    const/4 v8, 0x2

    :goto_35
    if-ge v0, v8, :cond_60

    move v10, v9

    const/4 v9, 0x0

    :goto_36
    if-ge v9, v2, :cond_5e

    .line 62
    iget-object v8, v1, Lb/g/b/i/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/g/b/i/d;

    move/from16 v17, v2

    instance-of v2, v8, Lb/g/b/i/g;

    if-eqz v2, :cond_53

    instance-of v2, v8, Lb/g/b/i/j;

    if-eqz v2, :cond_54

    :cond_53
    instance-of v2, v8, Lb/g/b/i/f;

    if-eqz v2, :cond_55

    :cond_54
    move/from16 v18, v0

    goto :goto_37

    .line 63
    :cond_55
    iget v2, v8, Lb/g/b/i/d;->X:I

    move/from16 v18, v0

    const/16 v0, 0x8

    if-ne v2, v0, :cond_56

    goto :goto_37

    .line 64
    :cond_56
    iget-object v0, v8, Lb/g/b/i/d;->d:Lb/g/b/i/l/j;

    iget-object v0, v0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v0, v0, Lb/g/b/i/l/f;->j:Z

    if-eqz v0, :cond_57

    iget-object v0, v8, Lb/g/b/i/d;->e:Lb/g/b/i/l/l;

    iget-object v0, v0, Lb/g/b/i/l/m;->e:Lb/g/b/i/l/g;

    iget-boolean v0, v0, Lb/g/b/i/l/f;->j:Z

    if-eqz v0, :cond_57

    goto :goto_37

    :cond_57
    instance-of v0, v8, Lb/g/b/i/j;

    if-eqz v0, :cond_58

    :goto_37
    move/from16 v25, v3

    move-object/from16 v19, v5

    goto :goto_38

    :cond_58
    invoke-virtual {v8}, Lb/g/b/i/d;->o()I

    move-result v0

    invoke-virtual {v8}, Lb/g/b/i/d;->i()I

    move-result v2

    move/from16 v25, v3

    .line 65
    iget v3, v8, Lb/g/b/i/d;->R:I

    move-object/from16 v19, v5

    const/4 v5, 0x1

    .line 66
    invoke-virtual {v1, v14, v8, v5}, Lb/g/b/i/l/b;->a(Lb/g/b/i/l/b$b;Lb/g/b/i/d;Z)Z

    move-result v20

    or-int v22, v10, v20

    invoke-virtual {v8}, Lb/g/b/i/d;->o()I

    move-result v10

    invoke-virtual {v8}, Lb/g/b/i/d;->i()I

    move-result v5

    if-eq v10, v0, :cond_5a

    invoke-virtual {v8, v10}, Lb/g/b/i/d;->B(I)V

    if-eqz v15, :cond_59

    invoke-virtual {v8}, Lb/g/b/i/d;->m()I

    move-result v0

    if-le v0, v6, :cond_59

    invoke-virtual {v8}, Lb/g/b/i/d;->m()I

    move-result v0

    invoke-virtual {v8, v12}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v10

    invoke-virtual {v10}, Lb/g/b/i/c;->b()I

    move-result v10

    add-int/2addr v10, v0

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_59
    const/16 v22, 0x1

    :cond_5a
    if-eq v5, v2, :cond_5c

    invoke-virtual {v8, v5}, Lb/g/b/i/d;->w(I)V

    if-eqz v4, :cond_5b

    invoke-virtual {v8}, Lb/g/b/i/d;->g()I

    move-result v0

    if-le v0, v7, :cond_5b

    invoke-virtual {v8}, Lb/g/b/i/d;->g()I

    move-result v0

    invoke-virtual {v8, v13}, Lb/g/b/i/d;->f(Lb/g/b/i/c$a;)Lb/g/b/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/g/b/i/c;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v7, v0

    :cond_5b
    const/16 v22, 0x1

    .line 67
    :cond_5c
    iget-boolean v0, v8, Lb/g/b/i/d;->w:Z

    if-eqz v0, :cond_5d

    .line 68
    iget v0, v8, Lb/g/b/i/d;->R:I

    if-eq v3, v0, :cond_5d

    const/4 v10, 0x1

    goto :goto_38

    :cond_5d
    move/from16 v10, v22

    :goto_38
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v17

    move/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v3, v25

    const/4 v8, 0x2

    goto/16 :goto_36

    :cond_5e
    move/from16 v18, v0

    move/from16 v17, v2

    move/from16 v25, v3

    move-object/from16 v19, v5

    if-eqz v10, :cond_5f

    move-object/from16 v0, v19

    move/from16 v2, v25

    .line 69
    invoke-virtual {v1, v0, v2, v11}, Lb/g/b/i/l/b;->b(Lb/g/b/i/e;II)V

    const/4 v9, 0x0

    goto :goto_39

    :cond_5f
    move-object/from16 v0, v19

    move/from16 v2, v25

    move v9, v10

    :goto_39
    add-int/lit8 v3, v18, 0x1

    move-object v5, v0

    move v0, v3

    const/4 v8, 0x2

    move v3, v2

    move/from16 v2, v17

    goto/16 :goto_35

    :cond_60
    move v2, v3

    move-object v0, v5

    if-eqz v9, :cond_64

    invoke-virtual {v1, v0, v2, v11}, Lb/g/b/i/l/b;->b(Lb/g/b/i/e;II)V

    invoke-virtual {v0}, Lb/g/b/i/d;->o()I

    move-result v3

    if-ge v3, v6, :cond_61

    invoke-virtual {v0, v6}, Lb/g/b/i/d;->B(I)V

    const/4 v15, 0x1

    goto :goto_3a

    :cond_61
    const/4 v15, 0x0

    :goto_3a
    invoke-virtual {v0}, Lb/g/b/i/d;->i()I

    move-result v3

    if-ge v3, v7, :cond_62

    invoke-virtual {v0, v7}, Lb/g/b/i/d;->w(I)V

    const/4 v15, 0x1

    :cond_62
    if-eqz v15, :cond_64

    invoke-virtual {v1, v0, v2, v11}, Lb/g/b/i/l/b;->b(Lb/g/b/i/e;II)V

    goto :goto_3b

    :cond_63
    move/from16 v16, v0

    move-object v0, v5

    :cond_64
    :goto_3b
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lb/g/b/i/e;->J(I)V

    :cond_65
    move-object/from16 v0, p0

    .line 70
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    invoke-virtual {v1}, Lb/g/b/i/d;->o()I

    move-result v1

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    invoke-virtual {v2}, Lb/g/b/i/d;->i()I

    move-result v2

    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 71
    iget-boolean v4, v3, Lb/g/b/i/e;->s0:Z

    .line 72
    iget-boolean v3, v3, Lb/g/b/i/e;->t0:Z

    .line 73
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    add-int/2addr v1, v5

    add-int/2addr v2, v6

    move/from16 v5, p1

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v1

    move/from16 v5, p2

    invoke-static {v2, v5, v6}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    const v5, 0xffffff

    and-int/2addr v1, v5

    and-int/2addr v2, v5

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x1000000

    if-eqz v4, :cond_66

    or-int/2addr v1, v5

    :cond_66
    if-eqz v3, :cond_67

    or-int/2addr v2, v5

    :cond_67
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return-void

    :cond_68
    const/4 v1, 0x0

    .line 74
    throw v1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v0

    instance-of v1, p1, Lb/g/c/h;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lb/g/b/i/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    new-instance v1, Lb/g/b/i/f;

    invoke-direct {v1}, Lb/g/b/i/f;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m0:Lb/g/b/i/d;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    check-cast v1, Lb/g/b/i/f;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v1, v0}, Lb/g/b/i/f;->E(I)V

    :cond_0
    instance-of v0, p1, Lb/g/c/c;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/g/c/c;

    invoke-virtual {v0}, Lb/g/c/c;->i()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/g/b/i/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 1
    iget-object v1, v1, Lb/g/b/i/k;->f0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lb/g/b/i/d;->K:Lb/g/b/i/d;

    .line 3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lb/g/c/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/g/c/e;

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lb/g/c/g;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/g/c/d;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/g/b/i/e;

    .line 1
    iput p1, v0, Lb/g/b/i/e;->r0:I

    const/16 v0, 0x100

    invoke-static {p1, v0}, Lb/g/b/i/i;->a(II)Z

    move-result p1

    sput-boolean p1, Lb/g/b/d;->r:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
