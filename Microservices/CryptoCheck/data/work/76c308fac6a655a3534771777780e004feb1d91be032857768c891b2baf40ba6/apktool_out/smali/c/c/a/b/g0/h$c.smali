.class public Lc/c/a/b/g0/h$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/g0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/b/g0/h;


# direct methods
.method public constructor <init>(Lc/c/a/b/g0/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    iget-object v0, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/b/g0/h;->d(Lc/c/a/b/g0/h;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    .line 1
    iget-object v2, v1, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lc/c/a/b/g0/h;->k:Lc/c/a/b/d0/g;

    goto :goto_0

    :cond_0
    if-ne v2, v4, :cond_1

    iget-object v1, v1, Lc/c/a/b/g0/h;->j:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_1
    iget-object v1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v5, v1, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    iget-object v7, v1, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lc/c/a/b/d0/g;

    move-result-object v7

    sget v8, Lc/c/a/b/b;->colorControlHighlight:I

    invoke-static {v0, v8}, Lc/c/a/a/c/l/q;->y(Landroid/view/View;I)I

    move-result v8

    new-array v9, v3, [[I

    new-array v10, v4, [I

    const v11, 0x10100a7

    aput v11, v10, v6

    aput-object v10, v9, v6

    new-array v10, v6, [I

    aput-object v10, v9, v4

    const v10, 0x3dcccccd    # 0.1f

    if-ne v5, v3, :cond_3

    .line 4
    sget v1, Lc/c/a/b/b;->colorSurface:I

    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->y(Landroid/view/View;I)I

    move-result v1

    new-instance v5, Lc/c/a/b/d0/g;

    .line 5
    iget-object v11, v7, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iget-object v11, v11, Lc/c/a/b/d0/g$b;->a:Lc/c/a/b/d0/j;

    .line 6
    invoke-direct {v5, v11}, Lc/c/a/b/d0/g;-><init>(Lc/c/a/b/d0/j;)V

    invoke-static {v8, v1, v10}, Lc/c/a/a/c/l/q;->K(IIF)I

    move-result v8

    new-array v10, v3, [I

    aput v8, v10, v6

    aput v6, v10, v4

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v11}, Lc/c/a/b/d0/g;->q(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v5, v1}, Lc/c/a/b/d0/g;->setTint(I)V

    new-array v10, v3, [I

    aput v8, v10, v6

    aput v1, v10, v4

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Lc/c/a/b/d0/g;

    .line 7
    iget-object v9, v7, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    iget-object v9, v9, Lc/c/a/b/d0/g$b;->a:Lc/c/a/b/d0/j;

    .line 8
    invoke-direct {v8, v9}, Lc/c/a/b/d0/g;-><init>(Lc/c/a/b/d0/j;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lc/c/a/b/d0/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v1, v5, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v6

    aput-object v7, v1, v4

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v3}, Lb/i/m/l;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    if-ne v5, v4, :cond_4

    .line 9
    iget-object v1, v1, Lc/c/a/b/g0/n;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v1

    invoke-static {v8, v1, v10}, Lc/c/a/a/c/l/q;->K(IIF)I

    move-result v5

    new-array v3, v3, [I

    aput v5, v3, v6

    aput v1, v3, v4

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v3, v1, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v3}, Lb/i/m/l;->Z(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 10
    :cond_4
    :goto_1
    iget-object v1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    if-eqz v1, :cond_5

    .line 11
    new-instance v3, Lc/c/a/b/g0/i;

    invoke-direct {v3, v1, v0}, Lc/c/a/b/g0/i;-><init>(Lc/c/a/b/g0/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lc/c/a/b/g0/j;

    invoke-direct {v3, v1}, Lc/c/a/b/g0/j;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v3, Lc/c/a/b/g0/k;

    invoke-direct {v3, v1}, Lc/c/a/b/g0/k;-><init>(Lc/c/a/b/g0/h;)V

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 12
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    .line 13
    iget-object v1, v1, Lc/c/a/b/g0/h;->d:Landroid/text/TextWatcher;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    .line 15
    iget-object v1, v1, Lc/c/a/b/g0/h;->d:Landroid/text/TextWatcher;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lc/c/a/b/g0/h$c;->a:Lc/c/a/b/g0/h;

    .line 17
    iget-object v0, v0, Lc/c/a/b/g0/h;->e:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 18
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void

    .line 19
    :cond_5
    throw v2

    .line 20
    :cond_6
    throw v2
.end method
