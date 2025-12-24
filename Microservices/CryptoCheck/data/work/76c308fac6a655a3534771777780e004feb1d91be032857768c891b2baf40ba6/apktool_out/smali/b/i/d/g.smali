.class public Lb/i/d/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/i/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/i/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:I

.field public h:Z

.field public i:Lb/i/d/h;

.field public j:Z

.field public k:Landroid/os/Bundle;

.field public l:I

.field public m:I

.field public n:Landroid/widget/RemoteViews;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Z

.field public s:Landroid/app/Notification;

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/i/d/g;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/i/d/g;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/i/d/g;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/i/d/g;->j:Z

    iput v1, p0, Lb/i/d/g;->l:I

    iput v1, p0, Lb/i/d/g;->m:I

    iput v1, p0, Lb/i/d/g;->p:I

    iput v1, p0, Lb/i/d/g;->q:I

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lb/i/d/g;->s:Landroid/app/Notification;

    iput-object p1, p0, Lb/i/d/g;->a:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/d/g;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    iget-object p1, p0, Lb/i/d/g;->s:Landroid/app/Notification;

    const/4 v2, -0x1

    iput v2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Lb/i/d/g;->g:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lb/i/d/g;->t:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lb/i/d/g;->r:Z

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public b(Lb/i/d/h;)Lb/i/d/g;
    .locals 1

    iget-object v0, p0, Lb/i/d/g;->i:Lb/i/d/h;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lb/i/d/g;->i:Lb/i/d/h;

    .line 1
    iget-object v0, p1, Lb/i/d/h;->a:Lb/i/d/g;

    if-eq v0, p0, :cond_0

    iput-object p0, p1, Lb/i/d/h;->a:Lb/i/d/g;

    invoke-virtual {p0, p1}, Lb/i/d/g;->b(Lb/i/d/h;)Lb/i/d/g;

    :cond_0
    return-object p0
.end method
