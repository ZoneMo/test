.class public final Lcom/tencent/mm/c/a/im;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRL:Lcom/tencent/mm/c/a/in;

.field public bRM:Lcom/tencent/mm/c/a/io;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/im;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/im;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/in;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/in;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/im;->bRL:Lcom/tencent/mm/c/a/in;

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/io;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/io;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/im;->bRM:Lcom/tencent/mm/c/a/io;

    .line 8
    const-string v0, "WalletPwdConfirmDoSecondaryProgress"

    iput-object v0, p0, Lcom/tencent/mm/c/a/im;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/im;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/im;->gbY:Z

    return-void
.end method
