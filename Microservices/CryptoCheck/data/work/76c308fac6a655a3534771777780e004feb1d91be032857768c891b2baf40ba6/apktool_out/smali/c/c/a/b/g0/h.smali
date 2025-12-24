.class public Lc/c/a/b/g0/h;
.super Lc/c/a/b/g0/n;
.source ""


# instance fields
.field public final d:Landroid/text/TextWatcher;

.field public final e:Lcom/google/android/material/textfield/TextInputLayout$e;

.field public final f:Lcom/google/android/material/textfield/TextInputLayout$f;

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Landroid/graphics/drawable/StateListDrawable;

.field public k:Lc/c/a/b/d0/g;

.field public l:Landroid/view/accessibility/AccessibilityManager;

.field public m:Landroid/animation/ValueAnimator;

.field public n:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lc/c/a/b/g0/n;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    new-instance p1, Lc/c/a/b/g0/h$a;

    invoke-direct {p1, p0}, Lc/c/a/b/g0/h$a;-><init>(Lc/c/a/b/g0/h;)V

    iput-object p1, p0, Lc/c/a/b/g0/h;->d:Landroid/text/TextWatcher;

    new-instance p1, Lc/c/a/b/g0/h$b;

    iget-object v0, p0, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p1, p0, v0}, Lc/c/a/b/g0/h$b;-><init>(Lc/c/a/b/g0/h;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object p1, p0, Lc/c/a/b/g0/h;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    new-instance p1, Lc/c/a/b/g0/h$c;

    invoke-direct {p1, p0}, Lc/c/a/b/g0/h$c;-><init>(Lc/c/a/b/g0/h;)V

    iput-object p1, p0, Lc/c/a/b/g0/h;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/b/g0/h;->g:Z

    iput-boolean p1, p0, Lc/c/a/b/g0/h;->h:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lc/c/a/b/g0/h;->i:J

    return-void
.end method

.method public static d(Lc/c/a/b/g0/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    instance-of p0, p1, Landroid/widget/AutoCompleteTextView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method

.method public static e(Lc/c/a/b/g0/h;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/b/g0/h;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lc/c/a/b/g0/h;->h:Z

    iget-object p1, p0, Lc/c/a/b/g0/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object p0, p0, Lc/c/a/b/g0/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public static f(Lc/c/a/b/g0/h;Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/c/a/b/g0/h;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lc/c/a/b/g0/h;->g:Z

    :cond_1
    iget-boolean v0, p0, Lc/c/a/b/g0/h;->g:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lc/c/a/b/g0/h;->h:Z

    xor-int/lit8 v1, v0, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    iput-boolean v1, p0, Lc/c/a/b/g0/h;->h:Z

    iget-object v0, p0, Lc/c/a/b/g0/h;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lc/c/a/b/g0/h;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 3
    :cond_2
    iget-boolean p0, p0, Lc/c/a/b/g0/h;->h:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lc/c/a/b/g0/h;->g:Z

    :goto_0
    return-void

    :cond_5
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/c/a/b/d;->mtrl_shape_corner_size_small_component:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/c/a/b/d;->mtrl_exposed_dropdown_menu_popup_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lc/c/a/b/d;->mtrl_exposed_dropdown_menu_popup_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lc/c/a/b/g0/h;->g(FFFI)Lc/c/a/b/d0/g;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0, v1, v2}, Lc/c/a/b/g0/h;->g(FFFI)Lc/c/a/b/d0/g;

    move-result-object v0

    iput-object v3, p0, Lc/c/a/b/g0/h;->k:Lc/c/a/b/d0/g;

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lc/c/a/b/g0/h;->j:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v4, 0x10100aa

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lc/c/a/b/g0/h;->j:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget v0, Lc/c/a/b/e;->mtrl_dropdown_arrow:I

    iget-object v1, p0, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/c/a/b/i;->exposed_dropdown_menu_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lc/c/a/b/g0/h$d;

    invoke-direct {v1, p0}, Lc/c/a/b/g0/h$d;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lc/c/a/b/g0/h;->f:Lcom/google/android/material/textfield/TextInputLayout$f;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$f;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    .line 2
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lc/c/a/b/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v2, 0x43

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lc/c/a/b/g0/m;

    invoke-direct {v2, p0}, Lc/c/a/b/g0/m;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iput-object v1, p0, Lc/c/a/b/g0/h;->n:Landroid/animation/ValueAnimator;

    const/16 v1, 0x32

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    .line 4
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lc/c/a/b/l/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lc/c/a/b/g0/m;

    invoke-direct {v1, p0}, Lc/c/a/b/g0/m;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iput-object v2, p0, Lc/c/a/b/g0/h;->m:Landroid/animation/ValueAnimator;

    new-instance v1, Lc/c/a/b/g0/l;

    invoke-direct {v1, p0}, Lc/c/a/b/g0/l;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v1, p0, Lc/c/a/b/g0/n;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v1, v0}, Lb/i/m/l;->d0(Landroid/view/View;I)V

    iget-object v0, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lc/c/a/b/g0/h;->l:Landroid/view/accessibility/AccessibilityManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(FFFI)Lc/c/a/b/d0/g;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/b/d0/j$b;

    invoke-direct {v0}, Lc/c/a/b/d0/j$b;-><init>()V

    .line 2
    new-instance v1, Lc/c/a/b/d0/a;

    invoke-direct {v1, p1}, Lc/c/a/b/d0/a;-><init>(F)V

    iput-object v1, v0, Lc/c/a/b/d0/j$b;->e:Lc/c/a/b/d0/c;

    .line 3
    new-instance v1, Lc/c/a/b/d0/a;

    invoke-direct {v1, p1}, Lc/c/a/b/d0/a;-><init>(F)V

    iput-object v1, v0, Lc/c/a/b/d0/j$b;->f:Lc/c/a/b/d0/c;

    .line 4
    new-instance p1, Lc/c/a/b/d0/a;

    invoke-direct {p1, p2}, Lc/c/a/b/d0/a;-><init>(F)V

    iput-object p1, v0, Lc/c/a/b/d0/j$b;->h:Lc/c/a/b/d0/c;

    .line 5
    new-instance p1, Lc/c/a/b/d0/a;

    invoke-direct {p1, p2}, Lc/c/a/b/d0/a;-><init>(F)V

    iput-object p1, v0, Lc/c/a/b/d0/j$b;->g:Lc/c/a/b/d0/c;

    .line 6
    invoke-virtual {v0}, Lc/c/a/b/d0/j$b;->a()Lc/c/a/b/d0/j;

    move-result-object p1

    iget-object p2, p0, Lc/c/a/b/g0/n;->b:Landroid/content/Context;

    invoke-static {p2, p3}, Lc/c/a/b/d0/g;->f(Landroid/content/Context;F)Lc/c/a/b/d0/g;

    move-result-object p2

    .line 7
    iget-object p3, p2, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iput-object p1, p3, Lc/c/a/b/d0/g$b;->a:Lc/c/a/b/d0/j;

    invoke-virtual {p2}, Lc/c/a/b/d0/g;->invalidateSelf()V

    .line 8
    iget-object p1, p2, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iget-object p3, p1, Lc/c/a/b/d0/g$b;->i:Landroid/graphics/Rect;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p1, Lc/c/a/b/d0/g$b;->i:Landroid/graphics/Rect;

    :cond_0
    iget-object p1, p2, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iget-object p1, p1, Lc/c/a/b/d0/g$b;->i:Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p4, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p2, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iget-object p1, p1, Lc/c/a/b/d0/g$b;->i:Landroid/graphics/Rect;

    iput-object p1, p2, Lc/c/a/b/d0/g;->u:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lc/c/a/b/d0/g;->invalidateSelf()V

    return-object p2
.end method

.method public final h()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/c/a/b/g0/h;->i:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
