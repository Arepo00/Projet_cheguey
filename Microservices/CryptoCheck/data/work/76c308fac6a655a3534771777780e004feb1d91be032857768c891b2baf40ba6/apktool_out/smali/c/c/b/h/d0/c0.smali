.class public Lc/c/b/h/d0/c0;
.super Lc/c/b/h/o;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/c/b/h/d0/c0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lc/c/a/a/f/c/a1;

.field public c:Lc/c/b/h/d0/z;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/h/d0/z;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/Boolean;

.field public j:Lc/c/b/h/d0/e0;

.field public k:Z

.field public l:Lc/c/b/h/g0;

.field public m:Lc/c/b/h/d0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/h/d0/b0;

    invoke-direct {v0}, Lc/c/b/h/d0/b0;-><init>()V

    sput-object v0, Lc/c/b/h/d0/c0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/f/c/a1;Lc/c/b/h/d0/z;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lc/c/b/h/d0/e0;ZLc/c/b/h/g0;Lc/c/b/h/d0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/f/c/a1;",
            "Lc/c/b/h/d0/z;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/c/b/h/d0/z;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lc/c/b/h/d0/e0;",
            "Z",
            "Lc/c/b/h/g0;",
            "Lc/c/b/h/d0/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/b/h/o;-><init>()V

    iput-object p1, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    iput-object p2, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    iput-object p3, p0, Lc/c/b/h/d0/c0;->d:Ljava/lang/String;

    iput-object p4, p0, Lc/c/b/h/d0/c0;->e:Ljava/lang/String;

    iput-object p5, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    iput-object p6, p0, Lc/c/b/h/d0/c0;->g:Ljava/util/List;

    iput-object p7, p0, Lc/c/b/h/d0/c0;->h:Ljava/lang/String;

    iput-object p8, p0, Lc/c/b/h/d0/c0;->i:Ljava/lang/Boolean;

    iput-object p9, p0, Lc/c/b/h/d0/c0;->j:Lc/c/b/h/d0/e0;

    iput-boolean p10, p0, Lc/c/b/h/d0/c0;->k:Z

    iput-object p11, p0, Lc/c/b/h/d0/c0;->l:Lc/c/b/h/g0;

    iput-object p12, p0, Lc/c/b/h/d0/c0;->m:Lc/c/b/h/d0/m;

    return-void
.end method

.method public constructor <init>(Lc/c/b/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/b;",
            "Ljava/util/List<",
            "+",
            "Lc/c/b/h/b0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/c/b/h/o;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object p1, p1, Lc/c/b/b;->b:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lc/c/b/h/d0/c0;->d:Ljava/lang/String;

    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lc/c/b/h/d0/c0;->e:Ljava/lang/String;

    const-string p1, "2"

    iput-object p1, p0, Lc/c/b/h/d0/c0;->h:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lc/c/b/h/d0/c0;->j(Ljava/util/List;)Lc/c/b/h/o;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 1
    iget-object v0, v0, Lc/c/b/h/d0/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lc/c/b/h/d0/i;->a(Ljava/lang/String;)Lc/c/b/h/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lc/c/b/h/p;->a:Ljava/util/Map;

    const-string v2, "firebase"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "tenant"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public i()Z
    .locals 3

    iget-object v0, p0, Lc/c/b/h/d0/c0;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, v0, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lc/c/b/h/d0/i;->a(Ljava/lang/String;)Lc/c/b/h/p;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lc/c/b/h/p;->a:Ljava/util/Map;

    const-string v1, "firebase"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "sign_in_provider"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_4

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/c/b/h/d0/c0;->i:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lc/c/b/h/d0/c0;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j(Ljava/util/List;)Lc/c/b/h/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lc/c/b/h/b0;",
            ">;)",
            "Lc/c/b/h/o;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/b/h/d0/c0;->g:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/b/h/b0;

    invoke-interface {v2}, Lc/c/b/h/b0;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lc/c/b/h/d0/z;

    iput-object v3, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lc/c/b/h/d0/c0;->g:Ljava/util/List;

    invoke-interface {v2}, Lc/c/b/h/b0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v3, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    check-cast v2, Lc/c/b/h/d0/z;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    if-nez p1, :cond_2

    iget-object p1, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/b/h/d0/z;

    iput-object p1, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    :cond_2
    return-object p0
.end method

.method public final k(Lc/c/a/a/f/c/a1;)V
    .locals 0

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/b/h/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/h/s;

    instance-of v2, v1, Lc/c/b/h/y;

    if-eqz v2, :cond_1

    check-cast v1, Lc/c/b/h/y;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lc/c/b/h/d0/m;

    invoke-direct {p1, v0}, Lc/c/b/h/d0/m;-><init>(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 2
    :goto_2
    iput-object p1, p0, Lc/c/b/h/d0/c0;->m:Lc/c/b/h/d0/m;

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    invoke-virtual {v0}, Lc/c/a/a/f/c/a1;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lc/c/a/a/c/l/q;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 1
    iget-object v1, p0, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lc/c/b/h/d0/c0;->d:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/b/h/d0/c0;->e:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {p1, v4, v1, v3}, Lc/c/a/a/c/l/q;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 3
    iget-object v1, p0, Lc/c/b/h/d0/c0;->g:Ljava/util/List;

    const/4 v4, 0x6

    .line 4
    invoke-static {p1, v4, v1, v3}, Lc/c/a/a/c/l/q;->i0(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v1, p0, Lc/c/b/h/d0/c0;->h:Ljava/lang/String;

    const/4 v4, 0x7

    invoke-static {p1, v4, v1, v3}, Lc/c/a/a/c/l/q;->h0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lc/c/b/h/d0/c0;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    .line 5
    invoke-static {p1, v4, v2}, Lc/c/a/a/c/l/q;->D0(Landroid/os/Parcel;II)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/16 v1, 0x9

    .line 6
    iget-object v2, p0, Lc/c/b/h/d0/c0;->j:Lc/c/b/h/d0/e0;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lc/c/b/h/d0/c0;->k:Z

    invoke-static {p1, v1, v2}, Lc/c/a/a/c/l/q;->c0(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lc/c/b/h/d0/c0;->l:Lc/c/b/h/g0;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lc/c/b/h/d0/c0;->m:Lc/c/b/h/d0/m;

    invoke-static {p1, v1, v2, p2, v3}, Lc/c/a/a/c/l/q;->g0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->C0(Landroid/os/Parcel;I)V

    return-void
.end method
