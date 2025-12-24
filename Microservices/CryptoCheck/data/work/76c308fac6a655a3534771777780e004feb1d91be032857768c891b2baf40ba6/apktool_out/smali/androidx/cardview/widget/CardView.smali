.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final i:[I

.field public static final j:Lb/e/e/c;


# instance fields
.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:Lb/e/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroidx/cardview/widget/CardView;->i:[I

    new-instance v0, Lb/e/e/a;

    invoke-direct {v0}, Lb/e/e/a;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget v0, Lb/e/a;->cardViewStyle:I

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->g:Landroid/graphics/Rect;

    new-instance v1, Landroidx/cardview/widget/CardView$a;

    invoke-direct {v1, p0}, Landroidx/cardview/widget/CardView$a;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    sget-object v1, Lb/e/d;->CardView:[I

    sget v2, Lb/e/c;->CardView:I

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lb/e/d;->CardView_cardBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget p2, Lb/e/d;->CardView_cardBackgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object v1, Landroidx/cardview/widget/CardView;->i:[I

    invoke-virtual {p2, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p2, 0x3

    new-array p2, p2, [F

    invoke-static {v1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v1, 0x2

    aget p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lb/e/b;->cardview_light_background:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lb/e/b;->cardview_dark_background:I

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_1
    sget v1, Lb/e/d;->CardView_cardCornerRadius:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v3, Lb/e/d;->CardView_cardElevation:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    sget v4, Lb/e/d;->CardView_cardMaxElevation:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    sget v4, Lb/e/d;->CardView_cardUseCompatPadding:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/cardview/widget/CardView;->b:Z

    sget v4, Lb/e/d;->CardView_cardPreventCornerOverlap:I

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/cardview/widget/CardView;->c:Z

    sget v4, Lb/e/d;->CardView_contentPadding:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iget-object v6, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Lb/e/d;->CardView_contentPaddingLeft:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Lb/e/d;->CardView_contentPaddingTop:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Lb/e/d;->CardView_contentPaddingRight:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    sget v7, Lb/e/d;->CardView_contentPaddingBottom:I

    invoke-virtual {p1, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, v6, Landroid/graphics/Rect;->bottom:I

    cmpl-float v4, v3, v2

    if-lez v4, :cond_2

    move v2, v3

    :cond_2
    sget v4, Lb/e/d;->CardView_android_minWidth:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/cardview/widget/CardView;->d:I

    sget v4, Lb/e/d;->CardView_android_minHeight:I

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/cardview/widget/CardView;->e:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast p1, Lb/e/e/a;

    .line 2
    new-instance v4, Lb/e/e/d;

    invoke-direct {v4, p2, v1}, Lb/e/e/d;-><init>(Landroid/content/res/ColorStateList;F)V

    move-object p2, v0

    check-cast p2, Landroidx/cardview/widget/CardView$a;

    .line 3
    iput-object v4, p2, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p2, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p2, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 5
    invoke-virtual {p2, v5}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p1, v0, v2}, Lb/e/e/a;->d(Lb/e/e/b;F)V

    return-void
.end method

.method public static synthetic c(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    .line 1
    invoke-virtual {v0, v1}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lb/e/e/d;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCardElevation()F
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    .line 1
    check-cast v0, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object v0, v0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    invoke-virtual {v0, v1}, Lb/e/e/a;->b(Lb/e/e/b;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->c:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    invoke-virtual {v0, v1}, Lb/e/e/a;->c(Lb/e/e/b;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    check-cast v0, Lb/e/e/a;

    .line 1
    invoke-virtual {v0, v1}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lb/e/e/d;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    .line 3
    invoke-virtual {v0, v1}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lb/e/e/d;->b(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    .line 1
    check-cast v0, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object v0, v0, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    invoke-virtual {v0, v1, p1}, Lb/e/e/a;->d(Lb/e/e/b;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/cardview/widget/CardView;->e:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/cardview/widget/CardView;->d:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->c:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->c:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast p1, Lb/e/e/a;

    .line 1
    invoke-virtual {p1, v0}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v1

    .line 2
    iget v1, v1, Lb/e/e/d;->e:F

    .line 3
    invoke-virtual {p1, v0, v1}, Lb/e/e/a;->d(Lb/e/e/b;F)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast v0, Lb/e/e/a;

    .line 1
    invoke-virtual {v0, v1}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v0

    .line 2
    iget v1, v0, Lb/e/e/d;->a:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lb/e/e/d;->a:F

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lb/e/e/d;->c(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/cardview/widget/CardView;->b:Z

    sget-object p1, Landroidx/cardview/widget/CardView;->j:Lb/e/e/c;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->h:Lb/e/e/b;

    check-cast p1, Lb/e/e/a;

    .line 1
    invoke-virtual {p1, v0}, Lb/e/e/a;->a(Lb/e/e/b;)Lb/e/e/d;

    move-result-object v1

    .line 2
    iget v1, v1, Lb/e/e/d;->e:F

    .line 3
    invoke-virtual {p1, v0, v1}, Lb/e/e/a;->d(Lb/e/e/b;F)V

    :cond_0
    return-void
.end method
