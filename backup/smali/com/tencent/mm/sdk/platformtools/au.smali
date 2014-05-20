.class final Lcom/tencent/mm/sdk/platformtools/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/aw;


# instance fields
.field final synthetic gea:Lcom/tencent/mm/sdk/platformtools/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/at;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/au;->gea:Lcom/tencent/mm/sdk/platformtools/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClientVersion()I
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/at;->wi()I

    move-result v0

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final nD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/at;->WN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
