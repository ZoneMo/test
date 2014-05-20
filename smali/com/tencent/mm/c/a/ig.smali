.class public final Lcom/tencent/mm/c/a/ig;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRG:Lcom/tencent/mm/c/a/ih;

.field public bRH:Lcom/tencent/mm/c/a/ii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ig;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ig;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ih;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ih;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ig;->bRG:Lcom/tencent/mm/c/a/ih;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/ii;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ii;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ig;->bRH:Lcom/tencent/mm/c/a/ii;

    .line 8
    const-string v0, "WalletPayOrders"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ig;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ig;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ig;->gbY:Z

    return-void
.end method
