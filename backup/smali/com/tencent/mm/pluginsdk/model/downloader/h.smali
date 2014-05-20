.class public final Lcom/tencent/mm/pluginsdk/model/downloader/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/pluginsdk/model/downloader/k;


# instance fields
.field private fiy:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/downloader/h;->fiy:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/model/downloader/h;-><init>(Landroid/net/Uri;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final aqn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final aqo()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/downloader/h;->fiy:Landroid/net/Uri;

    return-object v0
.end method

.method public final aqp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public final aqq()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final aqr()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final aqs()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public final aqt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public final cd(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    return-void
.end method

.method public final ce(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    return-void
.end method

.method public final gR(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    return-void
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public final kc(I)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public final qx(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public final qy(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    return-void
.end method
