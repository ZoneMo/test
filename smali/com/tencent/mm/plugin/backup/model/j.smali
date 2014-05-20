.class public Lcom/tencent/mm/plugin/backup/model/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public cKe:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/backup/model/j;->cKe:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method
