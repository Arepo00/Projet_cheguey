.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# static fields
.field public static final O:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lc/c/a/b/j;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->O:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    sget v0, Lc/c/a/b/b;->toolbarStyle:I

    .line 1
    sget v1, Lcom/google/android/material/appbar/MaterialToolbar;->O:I

    invoke-static {p1, p2, v0, v1}, Lc/c/a/b/y/i;->d(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lc/c/a/b/d0/g;

    invoke-direct {v0}, Lc/c/a/b/d0/g;-><init>()V

    if-eqz p2, :cond_1

    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {v0, p2}, Lc/c/a/b/d0/g;->q(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object p2, v0, Lc/c/a/b/d0/g;->b:Lc/c/a/b/d0/g$b;

    new-instance v1, Lc/c/a/b/v/a;

    invoke-direct {v1, p1}, Lc/c/a/b/v/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p2, Lc/c/a/b/d0/g$b;->b:Lc/c/a/b/v/a;

    invoke-virtual {v0}, Lc/c/a/b/d0/g;->x()V

    .line 4
    invoke-static {p0}, Lb/i/m/l;->m(Landroid/view/View;)F

    move-result p1

    invoke-virtual {v0, p1}, Lc/c/a/b/d0/g;->p(F)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/b/d0/g;

    if-eqz v1, :cond_0

    check-cast v0, Lc/c/a/b/d0/g;

    invoke-static {p0, v0}, Lc/c/a/a/c/l/q;->Y(Landroid/view/View;Lc/c/a/b/d0/g;)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    invoke-static {p0, p1}, Lc/c/a/a/c/l/q;->X(Landroid/view/View;F)V

    return-void
.end method
