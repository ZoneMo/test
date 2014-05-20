.class public final Lcom/tencent/mapapi/a/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private UW:Lcom/tencent/mapapi/a/c;

.field private UX:[B

.field private UY:Lcom/tencent/mapapi/map/t;

.field private a:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/a/c;Lcom/tencent/mapapi/map/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    .line 32
    const/16 v0, 0x20

    iput v0, p0, Lcom/tencent/mapapi/a/b;->a:I

    .line 33
    iput-object p1, p0, Lcom/tencent/mapapi/a/b;->UW:Lcom/tencent/mapapi/a/c;

    .line 35
    iput-object p2, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    .line 36
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/t;->mA()Z

    move-result v0

    .line 106
    if-ne v0, v2, :cond_2

    .line 108
    iget-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/t;->mj()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/tencent/mapapi/map/al;

    invoke-direct {v1, v0}, Lcom/tencent/mapapi/map/al;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/tencent/mapapi/map/al;->mG()Ljava/lang/Integer;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    if-ne v0, v2, :cond_1

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    invoke-interface {v1, v0}, Lcom/tencent/mapapi/map/t;->bb(I)V

    .line 125
    iget-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    invoke-interface {v0}, Lcom/tencent/mapapi/map/t;->mh()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/a/b;->UY:Lcom/tencent/mapapi/map/t;

    .line 136
    :cond_3
    aget-object v0, p1, v3

    .line 137
    :try_start_0
    const-string v1, "androidmapsdk1.0.3"

    invoke-static {v0, v1}, Lcom/tencent/a/a/a;->h(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/a/a/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/tencent/a/a/c;->data:[B

    if-nez v1, :cond_5

    .line 147
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_5
    iget-object v1, v0, Lcom/tencent/a/a/c;->XZ:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mapapi/a/b;->d:Ljava/lang/String;

    .line 150
    iget-object v0, v0, Lcom/tencent/a/a/c;->data:[B

    iput-object v0, p0, Lcom/tencent/mapapi/a/b;->UX:[B

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static mj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "androidmapsdk1.0.3"

    return-object v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/mapapi/a/b;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 13
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tencent/mapapi/a/b;->UW:Lcom/tencent/mapapi/a/c;

    iget v1, p0, Lcom/tencent/mapapi/a/b;->a:I

    iget-object v2, p0, Lcom/tencent/mapapi/a/b;->UX:[B

    iget-object v3, p0, Lcom/tencent/mapapi/a/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/tencent/mapapi/a/c;->a(ILjava/lang/Integer;[BLjava/lang/String;)V

    return-void
.end method
