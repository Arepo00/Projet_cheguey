.class public final Lc/c/a/b/u/f;
.super Lc/c/a/b/u/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/b/u/f$f;,
        Lc/c/a/b/u/f$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/b/u/t<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final h0:Ljava/lang/Object;

.field public static final i0:Ljava/lang/Object;

.field public static final j0:Ljava/lang/Object;

.field public static final k0:Ljava/lang/Object;


# instance fields
.field public X:I

.field public Y:Lc/c/a/b/u/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/b/u/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public Z:Lc/c/a/b/u/a;

.field public a0:Lc/c/a/b/u/o;

.field public b0:Lc/c/a/b/u/f$e;

.field public c0:Lc/c/a/b/u/c;

.field public d0:Landroidx/recyclerview/widget/RecyclerView;

.field public e0:Landroidx/recyclerview/widget/RecyclerView;

.field public f0:Landroid/view/View;

.field public g0:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lc/c/a/b/u/f;->h0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lc/c/a/b/u/f;->i0:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lc/c/a/b/u/f;->j0:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lc/c/a/b/u/f;->k0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/b/u/t;-><init>()V

    return-void
.end method

.method public static Z(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lc/c/a/b/d;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->A(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->g:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/c/a/b/u/f;->X:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/b/u/d;

    iput-object v0, p0, Lc/c/a/b/u/f;->Y:Lc/c/a/b/u/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/b/u/a;

    iput-object v0, p0, Lc/c/a/b/u/f;->Z:Lc/c/a/b/u/a;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/b/u/o;

    iput-object p1, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lc/c/a/b/u/f;->X:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lc/c/a/b/u/c;

    invoke-direct {v0, p3}, Lc/c/a/b/u/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/c/a/b/u/f;->c0:Lc/c/a/b/u/c;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/b/u/f;->Z:Lc/c/a/b/u/a;

    .line 1
    iget-object v0, v0, Lc/c/a/b/u/a;->b:Lc/c/a/b/u/o;

    .line 2
    invoke-static {p3}, Lc/c/a/b/u/n;->c0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lc/c/a/b/h;->mtrl_calendar_vertical:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lc/c/a/b/h;->mtrl_calendar_horizontal:I

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lc/c/a/b/f;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, Lc/c/a/b/u/f$b;

    invoke-direct {v1, p0}, Lc/c/a/b/u/f$b;-><init>(Lc/c/a/b/u/f;)V

    invoke-static {p2, v1}, Lb/i/m/l;->W(Landroid/view/View;Lb/i/m/a;)V

    new-instance v1, Lc/c/a/b/u/e;

    invoke-direct {v1}, Lc/c/a/b/u/e;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lc/c/a/b/u/o;->f:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    sget p2, Lc/c/a/b/f;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lc/c/a/b/u/f$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lc/c/a/b/u/f$c;-><init>(Lc/c/a/b/u/f;Landroid/content/Context;IZI)V

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object p2, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lc/c/a/b/u/r;

    iget-object v0, p0, Lc/c/a/b/u/f;->Y:Lc/c/a/b/u/d;

    iget-object v1, p0, Lc/c/a/b/u/f;->Z:Lc/c/a/b/u/a;

    new-instance v4, Lc/c/a/b/u/f$d;

    invoke-direct {v4, p0}, Lc/c/a/b/u/f$d;-><init>(Lc/c/a/b/u/f;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lc/c/a/b/u/r;-><init>(Landroid/content/Context;Lc/c/a/b/u/d;Lc/c/a/b/u/a;Lc/c/a/b/u/f$f;)V

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/c/a/b/g;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Lc/c/a/b/f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    iget-object v0, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lc/c/a/b/u/w;

    invoke-direct {v1, p0}, Lc/c/a/b/u/w;-><init>(Lc/c/a/b/u/f;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    iget-object v0, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Lc/c/a/b/u/g;

    invoke-direct {v1, p0}, Lc/c/a/b/u/g;-><init>(Lc/c/a/b/u/f;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    :cond_1
    sget v0, Lc/c/a/b/f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lc/c/a/b/f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lc/c/a/b/u/h;

    invoke-direct {v1, p0}, Lc/c/a/b/u/h;-><init>(Lc/c/a/b/u/f;)V

    invoke-static {v0, v1}, Lb/i/m/l;->W(Landroid/view/View;Lb/i/m/a;)V

    sget v1, Lc/c/a/b/f;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "NAVIGATION_PREV_TAG"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v2, Lc/c/a/b/f;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v3, Lc/c/a/b/f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc/c/a/b/u/f;->f0:Landroid/view/View;

    sget v3, Lc/c/a/b/f;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lc/c/a/b/u/f;->g0:Landroid/view/View;

    sget-object v3, Lc/c/a/b/u/f$e;->b:Lc/c/a/b/u/f$e;

    invoke-virtual {p0, v3}, Lc/c/a/b/u/f;->d0(Lc/c/a/b/u/f$e;)V

    iget-object v3, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    .line 6
    iget-object v3, v3, Lc/c/a/b/u/o;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lc/c/a/b/u/i;

    invoke-direct {v4, p0, p2, v0}, Lc/c/a/b/u/i;-><init>(Lc/c/a/b/u/f;Lc/c/a/b/u/r;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    new-instance v3, Lc/c/a/b/u/j;

    invoke-direct {v3, p0}, Lc/c/a/b/u/j;-><init>(Lc/c/a/b/u/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/c/a/b/u/k;

    invoke-direct {v0, p0, p2}, Lc/c/a/b/u/k;-><init>(Lc/c/a/b/u/f;Lc/c/a/b/u/r;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/c/a/b/u/l;

    invoke-direct {v0, p0, p2}, Lc/c/a/b/u/l;-><init>(Lc/c/a/b/u/f;Lc/c/a/b/u/r;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_2
    invoke-static {p3}, Lc/c/a/b/u/n;->c0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_6

    new-instance p3, Lb/r/d/p;

    invoke-direct {p3}, Lb/r/d/p;-><init>()V

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iget-object v1, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 10
    iget-object v2, p3, Lb/r/d/w;->c:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    iget-object v1, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 11
    :cond_4
    iput-object v0, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p3, Lb/r/d/w;->c:Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    iget-object v0, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 13
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p3, Lb/r/d/w;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p3, Lb/r/d/w;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Lb/r/d/w;->c()V

    goto :goto_1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_6
    :goto_1
    iget-object p3, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    invoke-virtual {p2, v0}, Lc/c/a/b/u/r;->f(Lc/c/a/b/u/o;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p1
.end method

.method public I(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lc/c/a/b/u/f;->X:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/c/a/b/u/f;->Y:Lc/c/a/b/u/d;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/c/a/b/u/f;->Z:Lc/c/a/b/u/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public a0()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final b0(I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lc/c/a/b/u/f$a;

    invoke-direct {v1, p0, p1}, Lc/c/a/b/u/f$a;-><init>(Lc/c/a/b/u/f;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c0(Lc/c/a/b/u/o;)V
    .locals 6

    iget-object v0, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lc/c/a/b/u/r;

    .line 1
    iget-object v1, v0, Lc/c/a/b/u/r;->c:Lc/c/a/b/u/a;

    .line 2
    iget-object v1, v1, Lc/c/a/b/u/a;->b:Lc/c/a/b/u/o;

    .line 3
    invoke-virtual {v1, p1}, Lc/c/a/b/u/o;->i(Lc/c/a/b/u/o;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    invoke-virtual {v0, v2}, Lc/c/a/b/u/r;->f(Lc/c/a/b/u/o;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object p1, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lc/c/a/b/u/f;->e0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_3
    invoke-virtual {p0, v1}, Lc/c/a/b/u/f;->b0(I)V

    return-void
.end method

.method public d0(Lc/c/a/b/u/f$e;)V
    .locals 4

    iput-object p1, p0, Lc/c/a/b/u/f;->b0:Lc/c/a/b/u/f$e;

    sget-object v0, Lc/c/a/b/u/f$e;->c:Lc/c/a/b/u/f$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/b/u/f;->d0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Lc/c/a/b/u/w;

    iget-object v3, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    iget v3, v3, Lc/c/a/b/u/o;->e:I

    invoke-virtual {v0, v3}, Lc/c/a/b/u/w;->e(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->K0(I)V

    iget-object p1, p0, Lc/c/a/b/u/f;->f0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/b/u/f;->g0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lc/c/a/b/u/f$e;->b:Lc/c/a/b/u/f$e;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lc/c/a/b/u/f;->f0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/b/u/f;->g0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/b/u/f;->a0:Lc/c/a/b/u/o;

    invoke-virtual {p0, p1}, Lc/c/a/b/u/f;->c0(Lc/c/a/b/u/o;)V

    :cond_1
    :goto_0
    return-void
.end method
