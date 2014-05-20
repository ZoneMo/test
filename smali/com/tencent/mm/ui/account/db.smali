.class public final Lcom/tencent/mm/ui/account/db;
.super Lcom/tencent/mm/ui/applet/n;
.source "SourceFile"


# static fields
.field private static grt:Lcom/tencent/mm/ui/account/db;


# instance fields
.field public cxs:Ljava/lang/String;

.field public gro:Ljava/lang/String;

.field public grp:Ljava/lang/String;

.field public grq:Ljava/lang/String;

.field public grr:[B

.field public grs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/tencent/mm/ui/applet/n;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/tencent/mm/ui/account/db;->cxs:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/tencent/mm/ui/account/db;->gro:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/tencent/mm/ui/account/db;->grp:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/tencent/mm/ui/account/db;->grq:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/tencent/mm/ui/account/db;->grr:[B

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/db;->grs:Z

    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/account/db;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    .line 31
    return-void
.end method

.method public static aFN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/db;->cxs:Ljava/lang/String;

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aFO()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/tencent/mm/ui/account/db;->grt:Lcom/tencent/mm/ui/account/db;

    iget-object v0, v0, Lcom/tencent/mm/ui/account/db;->gro:Ljava/lang/String;

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final aFM()V
    .locals 8

    .prologue
    .line 20
    new-instance v0, Lcom/tencent/mm/modelsimple/i;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/db;->cxs:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/db;->gro:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/account/db;->gxw:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/applet/SecurityImage;->BW()Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/db;->gxw:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/applet/SecurityImage;->aGu()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/account/db;->gxw:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/applet/SecurityImage;->aGt()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/ui/account/db;->gxw:Lcom/tencent/mm/ui/applet/SecurityImage;

    invoke-virtual {v6}, Lcom/tencent/mm/ui/applet/SecurityImage;->aGv()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/i;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 22
    return-void
.end method

.method protected final onStart()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
