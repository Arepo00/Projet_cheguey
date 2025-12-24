.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/n/e;


# instance fields
.field public final synthetic a:Lb/s/a;


# direct methods
.method public constructor <init>(Lb/s/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lb/n/g;Lb/n/d$a;)V
    .locals 0

    sget-object p1, Lb/n/d$a;->ON_START:Lb/n/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/a;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lb/n/d$a;->ON_STOP:Lb/n/d$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/s/a;

    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lb/s/a;->d:Z

    :cond_1
    return-void
.end method
